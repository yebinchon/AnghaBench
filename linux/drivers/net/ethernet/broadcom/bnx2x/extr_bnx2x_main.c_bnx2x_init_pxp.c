
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2x {int mrrs; int pdev; } ;


 int DP (int ,char*,int) ;
 int NETIF_MSG_HW ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_PAYLOAD ;
 int PCI_EXP_DEVCTL_READRQ ;
 int bnx2x_init_pxp_arb (struct bnx2x*,int,int) ;
 int pcie_capability_read_word (int ,int ,int*) ;

__attribute__((used)) static void bnx2x_init_pxp(struct bnx2x *bp)
{
 u16 devctl;
 int r_order, w_order;

 pcie_capability_read_word(bp->pdev, PCI_EXP_DEVCTL, &devctl);
 DP(NETIF_MSG_HW, "read 0x%x from devctl\n", devctl);
 w_order = ((devctl & PCI_EXP_DEVCTL_PAYLOAD) >> 5);
 if (bp->mrrs == -1)
  r_order = ((devctl & PCI_EXP_DEVCTL_READRQ) >> 12);
 else {
  DP(NETIF_MSG_HW, "force read order to %d\n", bp->mrrs);
  r_order = bp->mrrs;
 }

 bnx2x_init_pxp_arb(bp, r_order, w_order);
}
