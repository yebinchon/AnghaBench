
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct bnx2 {scalar_t__ phy_port; int phy_flags; int flags; int phy_lock; } ;


 scalar_t__ BNX2_CHIP (struct bnx2*) ;
 scalar_t__ BNX2_CHIP_5709 ;
 scalar_t__ BNX2_CHIP_ID (struct bnx2*) ;
 scalar_t__ BNX2_CHIP_ID_5706_A0 ;
 scalar_t__ BNX2_CHIP_ID_5706_A1 ;
 int BNX2_DRV_MSG_DATA_WAIT0 ;
 int BNX2_DRV_MSG_DATA_WAIT1 ;
 int BNX2_DRV_RESET_SIGNATURE ;
 int BNX2_DRV_RESET_SIGNATURE_MAGIC ;
 int BNX2_FLAG_USING_MSIX ;
 int BNX2_MISC_COMMAND ;
 int BNX2_MISC_COMMAND_SW_RESET ;
 int BNX2_MISC_ECO_HW_CTL ;
 int BNX2_MISC_ECO_HW_CTL_LARGE_GRC_TMOUT_EN ;
 int BNX2_MISC_ID ;
 int BNX2_MISC_VREG_CONTROL ;
 int BNX2_PCICFG_MISC_CONFIG ;
 int BNX2_PCICFG_MISC_CONFIG_CORE_RST_BSY ;
 int BNX2_PCICFG_MISC_CONFIG_CORE_RST_REQ ;
 int BNX2_PCICFG_MISC_CONFIG_REG_WINDOW_ENA ;
 int BNX2_PCICFG_MISC_CONFIG_TARGET_MB_WORD_SWAP ;
 int BNX2_PCI_SWAP_DIAG0 ;
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int EBUSY ;
 int ENODEV ;
 int bnx2_alloc_bad_rbuf (struct bnx2*) ;
 int bnx2_fw_sync (struct bnx2*,int,int,int) ;
 int bnx2_init_fw_cap (struct bnx2*) ;
 int bnx2_set_default_remote_link (struct bnx2*) ;
 int bnx2_setup_msix_tbl (struct bnx2*) ;
 int bnx2_shmem_wr (struct bnx2*,int ,int ) ;
 int bnx2_wait_dma_complete (struct bnx2*) ;
 int msleep (int) ;
 int pr_err (char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int udelay (int) ;

__attribute__((used)) static int
bnx2_reset_chip(struct bnx2 *bp, u32 reset_code)
{
 u32 val;
 int i, rc = 0;
 u8 old_port;



 bnx2_wait_dma_complete(bp);


 bnx2_fw_sync(bp, BNX2_DRV_MSG_DATA_WAIT0 | reset_code, 1, 1);



 bnx2_shmem_wr(bp, BNX2_DRV_RESET_SIGNATURE,
        BNX2_DRV_RESET_SIGNATURE_MAGIC);



 val = BNX2_RD(bp, BNX2_MISC_ID);

 if (BNX2_CHIP(bp) == BNX2_CHIP_5709) {
  BNX2_WR(bp, BNX2_MISC_COMMAND, BNX2_MISC_COMMAND_SW_RESET);
  BNX2_RD(bp, BNX2_MISC_COMMAND);
  udelay(5);

  val = BNX2_PCICFG_MISC_CONFIG_REG_WINDOW_ENA |
        BNX2_PCICFG_MISC_CONFIG_TARGET_MB_WORD_SWAP;

  BNX2_WR(bp, BNX2_PCICFG_MISC_CONFIG, val);

 } else {
  val = BNX2_PCICFG_MISC_CONFIG_CORE_RST_REQ |
        BNX2_PCICFG_MISC_CONFIG_REG_WINDOW_ENA |
        BNX2_PCICFG_MISC_CONFIG_TARGET_MB_WORD_SWAP;


  BNX2_WR(bp, BNX2_PCICFG_MISC_CONFIG, val);





  if ((BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5706_A0) ||
      (BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5706_A1))
   msleep(20);


  for (i = 0; i < 10; i++) {
   val = BNX2_RD(bp, BNX2_PCICFG_MISC_CONFIG);
   if ((val & (BNX2_PCICFG_MISC_CONFIG_CORE_RST_REQ |
        BNX2_PCICFG_MISC_CONFIG_CORE_RST_BSY)) == 0)
    break;
   udelay(10);
  }

  if (val & (BNX2_PCICFG_MISC_CONFIG_CORE_RST_REQ |
      BNX2_PCICFG_MISC_CONFIG_CORE_RST_BSY)) {
   pr_err("Chip reset did not complete\n");
   return -EBUSY;
  }
 }


 val = BNX2_RD(bp, BNX2_PCI_SWAP_DIAG0);
 if (val != 0x01020304) {
  pr_err("Chip not in correct endian mode\n");
  return -ENODEV;
 }


 rc = bnx2_fw_sync(bp, BNX2_DRV_MSG_DATA_WAIT1 | reset_code, 1, 0);
 if (rc)
  return rc;

 spin_lock_bh(&bp->phy_lock);
 old_port = bp->phy_port;
 bnx2_init_fw_cap(bp);
 if ((bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP) &&
     old_port != bp->phy_port)
  bnx2_set_default_remote_link(bp);
 spin_unlock_bh(&bp->phy_lock);

 if (BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5706_A0) {


  BNX2_WR(bp, BNX2_MISC_VREG_CONTROL, 0x000000fa);


  rc = bnx2_alloc_bad_rbuf(bp);
 }

 if (bp->flags & BNX2_FLAG_USING_MSIX) {
  bnx2_setup_msix_tbl(bp);

  BNX2_WR(bp, BNX2_MISC_ECO_HW_CTL,
   BNX2_MISC_ECO_HW_CTL_LARGE_GRC_TMOUT_EN);
 }

 return rc;
}
