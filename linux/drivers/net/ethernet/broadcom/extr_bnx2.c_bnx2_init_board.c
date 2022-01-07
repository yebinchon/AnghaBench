
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct statistics_block {int dummy; } ;
struct pci_dev {scalar_t__ pm_cap; scalar_t__ subsystem_vendor; int subsystem_device; int revision; int dev; scalar_t__ msi_cap; scalar_t__ msix_cap; } ;
struct net_device {int features; } ;
struct TYPE_3__ {int max_iscsi_conn; } ;
struct TYPE_4__ {int expires; } ;
struct bnx2 {int flags; int phy_flags; scalar_t__ pm_cap; int chip_id; scalar_t__ pcix_cap; int func; int shmem_base; char* fw_version; int wol; int* mac_addr; int tx_quick_cons_trip_int; int tx_quick_cons_trip; int tx_ticks_int; int tx_ticks; int rx_quick_cons_trip_int; int rx_quick_cons_trip; int rx_ticks_int; int rx_ticks; int stats_ticks; int phy_addr; int req_flow_ctrl; int temp_stats_blk; int * regview; int cnic_probe; TYPE_1__ cnic_eth_dev; TYPE_2__ timer; int cmd_ticks; int cmd_ticks_int; int com_ticks; int com_ticks_int; int comp_prod_trip; int comp_prod_trip_int; struct pci_dev* pdev; int phy_port; int current_interval; int tx_ring_size; int reset_task; int cnic_lock; int indirect_lock; int phy_lock; struct net_device* dev; } ;


 int BNX2_BC_STATE_CONDITION ;
 scalar_t__ BNX2_CHIP (struct bnx2*) ;
 scalar_t__ BNX2_CHIP_5706 ;
 scalar_t__ BNX2_CHIP_5708 ;
 scalar_t__ BNX2_CHIP_5709 ;
 int BNX2_CHIP_BOND (struct bnx2*) ;
 int BNX2_CHIP_BOND_SERDES_BIT ;
 scalar_t__ BNX2_CHIP_ID (struct bnx2*) ;
 scalar_t__ BNX2_CHIP_ID_5706_A0 ;
 scalar_t__ BNX2_CHIP_ID_5706_A1 ;
 scalar_t__ BNX2_CHIP_ID_5708_A0 ;
 scalar_t__ BNX2_CHIP_ID_5708_B0 ;
 scalar_t__ BNX2_CHIP_ID_5708_B1 ;
 scalar_t__ BNX2_CHIP_REV (struct bnx2*) ;
 scalar_t__ BNX2_CHIP_REV_Ax ;
 scalar_t__ BNX2_CHIP_REV_Bx ;
 int BNX2_CONDITION_MFW_RUN_MASK ;
 int BNX2_CONDITION_MFW_RUN_NONE ;
 int BNX2_CONDITION_MFW_RUN_UNKNOWN ;
 int BNX2_DEV_INFO_BC_REV ;
 int BNX2_DEV_INFO_SIGNATURE ;
 int BNX2_DEV_INFO_SIGNATURE_MAGIC ;
 int BNX2_DEV_INFO_SIGNATURE_MAGIC_MASK ;
 int BNX2_FLAG_AER_ENABLED ;
 int BNX2_FLAG_ASF_ENABLE ;
 int BNX2_FLAG_BROKEN_STATS ;
 int BNX2_FLAG_JUMBO_BROKEN ;
 int BNX2_FLAG_MSIX_CAP ;
 int BNX2_FLAG_MSI_CAP ;
 int BNX2_FLAG_NO_WOL ;
 int BNX2_FLAG_PCIE ;
 int BNX2_FLAG_PCIX ;
 int BNX2_HC_STATS_TICKS_HC_STAT_TICKS ;
 int BNX2_ISCSI_INITIATOR ;
 int BNX2_ISCSI_INITIATOR_EN ;
 int BNX2_ISCSI_MAX_CONN ;
 int BNX2_ISCSI_MAX_CONN_MASK ;
 int BNX2_ISCSI_MAX_CONN_SHIFT ;
 int BNX2_MAX_TX_DESC_CNT ;
 int BNX2_MCP_TOE_ID ;
 int BNX2_MCP_TOE_ID_FUNCTION_ID ;
 int BNX2_MFW_VER_PTR ;
 int BNX2_MISC_ID ;
 int BNX2_PCICFG_MISC_CONFIG ;
 int BNX2_PCICFG_MISC_CONFIG_REG_WINDOW_ENA ;
 int BNX2_PCICFG_MISC_CONFIG_TARGET_MB_WORD_SWAP ;
 int BNX2_PCI_CONFIG_3 ;
 int BNX2_PCI_CONFIG_3_VAUX_PRESET ;
 int BNX2_PHY_FLAG_2_5G_CAPABLE ;
 int BNX2_PHY_FLAG_CRC_FIX ;
 int BNX2_PHY_FLAG_DIS_EARLY_DAC ;
 int BNX2_PHY_FLAG_NO_PARALLEL ;
 int BNX2_PHY_FLAG_SERDES ;
 int BNX2_PORT_FEATURE ;
 int BNX2_PORT_FEATURE_ASF_ENABLED ;
 int BNX2_PORT_FEATURE_WOL_ENABLED ;
 int BNX2_PORT_HW_CFG_MAC_LOWER ;
 int BNX2_PORT_HW_CFG_MAC_UPPER ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_SHARED_HW_CFG_CONFIG ;
 int BNX2_SHARED_HW_CFG_GIG_LINK_ON_VAUX ;
 int BNX2_SHARED_HW_CFG_PHY_2_5G ;
 int BNX2_SHM_HDR_ADDR_0 ;
 int BNX2_SHM_HDR_SIGNATURE ;
 int BNX2_SHM_HDR_SIGNATURE_SIG ;
 int BNX2_SHM_HDR_SIGNATURE_SIG_MASK ;
 int BNX2_TIMER_INTERVAL ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int DMA_BIT_MASK (int) ;
 int DRV_MODULE_NAME ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int GFP_KERNEL ;
 int HOST_VIEW_SHMEM_BASE ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 int MB_GET_CID_ADDR (scalar_t__) ;
 int NETIF_F_HIGHDMA ;
 int PCI_CAP_ID_PCIX ;
 int PCI_COMMAND ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int PCI_DEVICE_ID_AMD_8132_BRIDGE ;
 int PCI_VENDOR_ID_AMD ;
 scalar_t__ PCI_VENDOR_ID_HP ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int RUN_AT (int ) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 scalar_t__ TX_MAX_TSS_RINGS ;
 scalar_t__ TX_TSS_CID ;
 int USEC_PER_SEC ;
 int be32_to_cpu (int) ;
 int bnx2_alloc_stats_blk (struct net_device*) ;
 int bnx2_cnic_probe ;
 int bnx2_get_5709_media (struct bnx2*) ;
 int bnx2_get_pci_speed (struct bnx2*) ;
 int bnx2_init_fw_cap (struct bnx2*) ;
 int bnx2_init_nvram (struct bnx2*) ;
 int bnx2_read_vpd_fw_ver (struct bnx2*) ;
 int bnx2_reg_rd_ind (struct bnx2*,int) ;
 int bnx2_reset_task ;
 int bnx2_set_default_link (struct bnx2*) ;
 int bnx2_set_rx_ring_size (struct bnx2*,int) ;
 int bnx2_shmem_rd (struct bnx2*,int ) ;
 int bnx2_timer ;
 int dev_err (int *,char*) ;
 int device_set_wakeup_capable (int *,int) ;
 int device_set_wakeup_enable (int *,int) ;
 int disable_msi ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;
 int memcpy (char*,int*,int) ;
 int msleep (int) ;
 int mutex_init (int *) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int * pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_iounmap (struct pci_dev*,int *) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int spin_lock_init (int *) ;
 int strlen (char*) ;
 int timer_setup (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int
bnx2_init_board(struct pci_dev *pdev, struct net_device *dev)
{
 struct bnx2 *bp;
 int rc, i, j;
 u32 reg;
 u64 dma_mask, persist_dma_mask;
 int err;

 SET_NETDEV_DEV(dev, &pdev->dev);
 bp = netdev_priv(dev);

 bp->flags = 0;
 bp->phy_flags = 0;

 bp->temp_stats_blk =
  kzalloc(sizeof(struct statistics_block), GFP_KERNEL);

 if (!bp->temp_stats_blk) {
  rc = -ENOMEM;
  goto err_out;
 }


 rc = pci_enable_device(pdev);
 if (rc) {
  dev_err(&pdev->dev, "Cannot enable PCI device, aborting\n");
  goto err_out;
 }

 if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM)) {
  dev_err(&pdev->dev,
   "Cannot find PCI device base address, aborting\n");
  rc = -ENODEV;
  goto err_out_disable;
 }

 rc = pci_request_regions(pdev, DRV_MODULE_NAME);
 if (rc) {
  dev_err(&pdev->dev, "Cannot obtain PCI resources, aborting\n");
  goto err_out_disable;
 }

 pci_set_master(pdev);

 bp->pm_cap = pdev->pm_cap;
 if (bp->pm_cap == 0) {
  dev_err(&pdev->dev,
   "Cannot find power management capability, aborting\n");
  rc = -EIO;
  goto err_out_release;
 }

 bp->dev = dev;
 bp->pdev = pdev;

 spin_lock_init(&bp->phy_lock);
 spin_lock_init(&bp->indirect_lock);



 INIT_WORK(&bp->reset_task, bnx2_reset_task);

 bp->regview = pci_iomap(pdev, 0, MB_GET_CID_ADDR(TX_TSS_CID +
        TX_MAX_TSS_RINGS + 1));
 if (!bp->regview) {
  dev_err(&pdev->dev, "Cannot map register space, aborting\n");
  rc = -ENOMEM;
  goto err_out_release;
 }





 BNX2_WR(bp, BNX2_PCICFG_MISC_CONFIG,
  BNX2_PCICFG_MISC_CONFIG_REG_WINDOW_ENA |
  BNX2_PCICFG_MISC_CONFIG_TARGET_MB_WORD_SWAP);

 bp->chip_id = BNX2_RD(bp, BNX2_MISC_ID);

 if (BNX2_CHIP(bp) == BNX2_CHIP_5709) {
  if (!pci_is_pcie(pdev)) {
   dev_err(&pdev->dev, "Not PCIE, aborting\n");
   rc = -EIO;
   goto err_out_unmap;
  }
  bp->flags |= BNX2_FLAG_PCIE;
  if (BNX2_CHIP_REV(bp) == BNX2_CHIP_REV_Ax)
   bp->flags |= BNX2_FLAG_JUMBO_BROKEN;


  err = pci_enable_pcie_error_reporting(pdev);
  if (!err)
   bp->flags |= BNX2_FLAG_AER_ENABLED;

 } else {
  bp->pcix_cap = pci_find_capability(pdev, PCI_CAP_ID_PCIX);
  if (bp->pcix_cap == 0) {
   dev_err(&pdev->dev,
    "Cannot find PCIX capability, aborting\n");
   rc = -EIO;
   goto err_out_unmap;
  }
  bp->flags |= BNX2_FLAG_BROKEN_STATS;
 }

 if (BNX2_CHIP(bp) == BNX2_CHIP_5709 &&
     BNX2_CHIP_REV(bp) != BNX2_CHIP_REV_Ax) {
  if (pdev->msix_cap)
   bp->flags |= BNX2_FLAG_MSIX_CAP;
 }

 if (BNX2_CHIP_ID(bp) != BNX2_CHIP_ID_5706_A0 &&
     BNX2_CHIP_ID(bp) != BNX2_CHIP_ID_5706_A1) {
  if (pdev->msi_cap)
   bp->flags |= BNX2_FLAG_MSI_CAP;
 }


 if (BNX2_CHIP(bp) == BNX2_CHIP_5708)
  persist_dma_mask = dma_mask = DMA_BIT_MASK(40);
 else
  persist_dma_mask = dma_mask = DMA_BIT_MASK(64);


 if (pci_set_dma_mask(pdev, dma_mask) == 0) {
  dev->features |= NETIF_F_HIGHDMA;
  rc = pci_set_consistent_dma_mask(pdev, persist_dma_mask);
  if (rc) {
   dev_err(&pdev->dev,
    "pci_set_consistent_dma_mask failed, aborting\n");
   goto err_out_unmap;
  }
 } else if ((rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(32))) != 0) {
  dev_err(&pdev->dev, "System does not support DMA, aborting\n");
  goto err_out_unmap;
 }

 if (!(bp->flags & BNX2_FLAG_PCIE))
  bnx2_get_pci_speed(bp);


 if (BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5706_A0) {
  reg = BNX2_RD(bp, PCI_COMMAND);
  reg &= ~(PCI_COMMAND_SERR | PCI_COMMAND_PARITY);
  BNX2_WR(bp, PCI_COMMAND, reg);
 } else if ((BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5706_A1) &&
  !(bp->flags & BNX2_FLAG_PCIX)) {

  dev_err(&pdev->dev,
   "5706 A1 can only be used in a PCIX bus, aborting\n");
  goto err_out_unmap;
 }

 bnx2_init_nvram(bp);

 reg = bnx2_reg_rd_ind(bp, BNX2_SHM_HDR_SIGNATURE);

 if (bnx2_reg_rd_ind(bp, BNX2_MCP_TOE_ID) & BNX2_MCP_TOE_ID_FUNCTION_ID)
  bp->func = 1;

 if ((reg & BNX2_SHM_HDR_SIGNATURE_SIG_MASK) ==
     BNX2_SHM_HDR_SIGNATURE_SIG) {
  u32 off = bp->func << 2;

  bp->shmem_base = bnx2_reg_rd_ind(bp, BNX2_SHM_HDR_ADDR_0 + off);
 } else
  bp->shmem_base = HOST_VIEW_SHMEM_BASE;




 reg = bnx2_shmem_rd(bp, BNX2_DEV_INFO_SIGNATURE);

 if ((reg & BNX2_DEV_INFO_SIGNATURE_MAGIC_MASK) !=
     BNX2_DEV_INFO_SIGNATURE_MAGIC) {
  dev_err(&pdev->dev, "Firmware not running, aborting\n");
  rc = -ENODEV;
  goto err_out_unmap;
 }

 bnx2_read_vpd_fw_ver(bp);

 j = strlen(bp->fw_version);
 reg = bnx2_shmem_rd(bp, BNX2_DEV_INFO_BC_REV);
 for (i = 0; i < 3 && j < 24; i++) {
  u8 num, k, skip0;

  if (i == 0) {
   bp->fw_version[j++] = 'b';
   bp->fw_version[j++] = 'c';
   bp->fw_version[j++] = ' ';
  }
  num = (u8) (reg >> (24 - (i * 8)));
  for (k = 100, skip0 = 1; k >= 1; num %= k, k /= 10) {
   if (num >= k || !skip0 || k == 1) {
    bp->fw_version[j++] = (num / k) + '0';
    skip0 = 0;
   }
  }
  if (i != 2)
   bp->fw_version[j++] = '.';
 }
 reg = bnx2_shmem_rd(bp, BNX2_PORT_FEATURE);
 if (reg & BNX2_PORT_FEATURE_WOL_ENABLED)
  bp->wol = 1;

 if (reg & BNX2_PORT_FEATURE_ASF_ENABLED) {
  bp->flags |= BNX2_FLAG_ASF_ENABLE;

  for (i = 0; i < 30; i++) {
   reg = bnx2_shmem_rd(bp, BNX2_BC_STATE_CONDITION);
   if (reg & BNX2_CONDITION_MFW_RUN_MASK)
    break;
   msleep(10);
  }
 }
 reg = bnx2_shmem_rd(bp, BNX2_BC_STATE_CONDITION);
 reg &= BNX2_CONDITION_MFW_RUN_MASK;
 if (reg != BNX2_CONDITION_MFW_RUN_UNKNOWN &&
     reg != BNX2_CONDITION_MFW_RUN_NONE) {
  u32 addr = bnx2_shmem_rd(bp, BNX2_MFW_VER_PTR);

  if (j < 32)
   bp->fw_version[j++] = ' ';
  for (i = 0; i < 3 && j < 28; i++) {
   reg = bnx2_reg_rd_ind(bp, addr + i * 4);
   reg = be32_to_cpu(reg);
   memcpy(&bp->fw_version[j], &reg, 4);
   j += 4;
  }
 }

 reg = bnx2_shmem_rd(bp, BNX2_PORT_HW_CFG_MAC_UPPER);
 bp->mac_addr[0] = (u8) (reg >> 8);
 bp->mac_addr[1] = (u8) reg;

 reg = bnx2_shmem_rd(bp, BNX2_PORT_HW_CFG_MAC_LOWER);
 bp->mac_addr[2] = (u8) (reg >> 24);
 bp->mac_addr[3] = (u8) (reg >> 16);
 bp->mac_addr[4] = (u8) (reg >> 8);
 bp->mac_addr[5] = (u8) reg;

 bp->tx_ring_size = BNX2_MAX_TX_DESC_CNT;
 bnx2_set_rx_ring_size(bp, 255);

 bp->tx_quick_cons_trip_int = 2;
 bp->tx_quick_cons_trip = 20;
 bp->tx_ticks_int = 18;
 bp->tx_ticks = 80;

 bp->rx_quick_cons_trip_int = 2;
 bp->rx_quick_cons_trip = 12;
 bp->rx_ticks_int = 18;
 bp->rx_ticks = 18;

 bp->stats_ticks = USEC_PER_SEC & BNX2_HC_STATS_TICKS_HC_STAT_TICKS;

 bp->current_interval = BNX2_TIMER_INTERVAL;

 bp->phy_addr = 1;


 rc = bnx2_alloc_stats_blk(dev);
 if (rc)
  goto err_out_unmap;


 if (BNX2_CHIP(bp) == BNX2_CHIP_5709)
  bnx2_get_5709_media(bp);
 else if (BNX2_CHIP_BOND(bp) & BNX2_CHIP_BOND_SERDES_BIT)
  bp->phy_flags |= BNX2_PHY_FLAG_SERDES;

 bp->phy_port = PORT_TP;
 if (bp->phy_flags & BNX2_PHY_FLAG_SERDES) {
  bp->phy_port = PORT_FIBRE;
  reg = bnx2_shmem_rd(bp, BNX2_SHARED_HW_CFG_CONFIG);
  if (!(reg & BNX2_SHARED_HW_CFG_GIG_LINK_ON_VAUX)) {
   bp->flags |= BNX2_FLAG_NO_WOL;
   bp->wol = 0;
  }
  if (BNX2_CHIP(bp) == BNX2_CHIP_5706) {




   if (pdev->subsystem_vendor == PCI_VENDOR_ID_HP &&
       pdev->subsystem_device == 0x310c)
    bp->phy_flags |= BNX2_PHY_FLAG_NO_PARALLEL;
  } else {
   bp->phy_addr = 2;
   if (reg & BNX2_SHARED_HW_CFG_PHY_2_5G)
    bp->phy_flags |= BNX2_PHY_FLAG_2_5G_CAPABLE;
  }
 } else if (BNX2_CHIP(bp) == BNX2_CHIP_5706 ||
     BNX2_CHIP(bp) == BNX2_CHIP_5708)
  bp->phy_flags |= BNX2_PHY_FLAG_CRC_FIX;
 else if (BNX2_CHIP(bp) == BNX2_CHIP_5709 &&
   (BNX2_CHIP_REV(bp) == BNX2_CHIP_REV_Ax ||
    BNX2_CHIP_REV(bp) == BNX2_CHIP_REV_Bx))
  bp->phy_flags |= BNX2_PHY_FLAG_DIS_EARLY_DAC;

 bnx2_init_fw_cap(bp);

 if ((BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5708_A0) ||
     (BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5708_B0) ||
     (BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5708_B1) ||
     !(BNX2_RD(bp, BNX2_PCI_CONFIG_3) & BNX2_PCI_CONFIG_3_VAUX_PRESET)) {
  bp->flags |= BNX2_FLAG_NO_WOL;
  bp->wol = 0;
 }

 if (bp->flags & BNX2_FLAG_NO_WOL)
  device_set_wakeup_capable(&bp->pdev->dev, 0);
 else
  device_set_wakeup_enable(&bp->pdev->dev, bp->wol);

 if (BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5706_A0) {
  bp->tx_quick_cons_trip_int =
   bp->tx_quick_cons_trip;
  bp->tx_ticks_int = bp->tx_ticks;
  bp->rx_quick_cons_trip_int =
   bp->rx_quick_cons_trip;
  bp->rx_ticks_int = bp->rx_ticks;
  bp->comp_prod_trip_int = bp->comp_prod_trip;
  bp->com_ticks_int = bp->com_ticks;
  bp->cmd_ticks_int = bp->cmd_ticks;
 }
 if (BNX2_CHIP(bp) == BNX2_CHIP_5706 && disable_msi == 0) {
  struct pci_dev *amd_8132 = ((void*)0);

  while ((amd_8132 = pci_get_device(PCI_VENDOR_ID_AMD,
        PCI_DEVICE_ID_AMD_8132_BRIDGE,
        amd_8132))) {

   if (amd_8132->revision >= 0x10 &&
       amd_8132->revision <= 0x13) {
    disable_msi = 1;
    pci_dev_put(amd_8132);
    break;
   }
  }
 }

 bnx2_set_default_link(bp);
 bp->req_flow_ctrl = FLOW_CTRL_RX | FLOW_CTRL_TX;

 timer_setup(&bp->timer, bnx2_timer, 0);
 bp->timer.expires = RUN_AT(BNX2_TIMER_INTERVAL);
 pci_save_state(pdev);

 return 0;

err_out_unmap:
 if (bp->flags & BNX2_FLAG_AER_ENABLED) {
  pci_disable_pcie_error_reporting(pdev);
  bp->flags &= ~BNX2_FLAG_AER_ENABLED;
 }

 pci_iounmap(pdev, bp->regview);
 bp->regview = ((void*)0);

err_out_release:
 pci_release_regions(pdev);

err_out_disable:
 pci_disable_device(pdev);

err_out:
 kfree(bp->temp_stats_blk);

 return rc;
}
