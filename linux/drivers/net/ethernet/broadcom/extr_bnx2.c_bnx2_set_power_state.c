
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int pdev; int fw_last_msg; int wol; } ;
typedef int pci_power_t ;


 int BNX2_BC_STATE_CONDITION ;
 int BNX2_CHIP (struct bnx2*) ;
 int BNX2_CHIP_5709 ;
 int BNX2_CHIP_ID (struct bnx2*) ;
 int BNX2_CHIP_ID_5706_A0 ;
 int BNX2_CHIP_ID_5706_A1 ;
 int BNX2_CONDITION_PM_STATE_MASK ;
 int BNX2_CONDITION_PM_STATE_UNPREP ;
 int BNX2_EMAC_MODE ;
 int BNX2_EMAC_MODE_ACPI_RCVD ;
 int BNX2_EMAC_MODE_MPKT ;
 int BNX2_EMAC_MODE_MPKT_RCVD ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_RPM_CONFIG ;
 int BNX2_RPM_CONFIG_ACPI_ENA ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int EINVAL ;


 int bnx2_setup_wol (struct bnx2*) ;
 int bnx2_shmem_rd (struct bnx2*,int ) ;
 int bnx2_shmem_wr (struct bnx2*,int ,int) ;
 int pci_enable_wake (int ,int const,int) ;
 int pci_set_power_state (int ,int const) ;
 int pci_wake_from_d3 (int ,int ) ;

__attribute__((used)) static int
bnx2_set_power_state(struct bnx2 *bp, pci_power_t state)
{
 switch (state) {
 case 129: {
  u32 val;

  pci_enable_wake(bp->pdev, 129, 0);
  pci_set_power_state(bp->pdev, 129);

  val = BNX2_RD(bp, BNX2_EMAC_MODE);
  val |= BNX2_EMAC_MODE_MPKT_RCVD | BNX2_EMAC_MODE_ACPI_RCVD;
  val &= ~BNX2_EMAC_MODE_MPKT;
  BNX2_WR(bp, BNX2_EMAC_MODE, val);

  val = BNX2_RD(bp, BNX2_RPM_CONFIG);
  val &= ~BNX2_RPM_CONFIG_ACPI_ENA;
  BNX2_WR(bp, BNX2_RPM_CONFIG, val);
  break;
 }
 case 128: {
  bnx2_setup_wol(bp);
  pci_wake_from_d3(bp->pdev, bp->wol);
  if ((BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5706_A0) ||
      (BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5706_A1)) {

   if (bp->wol)
    pci_set_power_state(bp->pdev, 128);
   break;

  }
  if (!bp->fw_last_msg && BNX2_CHIP(bp) == BNX2_CHIP_5709) {
   u32 val;





   val = bnx2_shmem_rd(bp, BNX2_BC_STATE_CONDITION);
   val &= ~BNX2_CONDITION_PM_STATE_MASK;
   val |= BNX2_CONDITION_PM_STATE_UNPREP;
   bnx2_shmem_wr(bp, BNX2_BC_STATE_CONDITION, val);
  }
  pci_set_power_state(bp->pdev, 128);




  break;
 }
 default:
  return -EINVAL;
 }
 return 0;
}
