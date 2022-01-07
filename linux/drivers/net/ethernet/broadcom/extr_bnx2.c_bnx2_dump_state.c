
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bnx2 {int flags; int pdev; scalar_t__ pm_cap; int intr_sem; struct net_device* dev; } ;


 int BNX2_EMAC_RX_STATUS ;
 int BNX2_EMAC_TX_STATUS ;
 int BNX2_FLAG_USING_MSIX ;
 int BNX2_HC_STATS_INTERRUPT_STATUS ;
 scalar_t__ BNX2_PCICFG_MISC_CONFIG ;
 int BNX2_PCI_GRC_WINDOW3_BASE ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_RPM_MGMT_PKT_CTRL ;
 scalar_t__ PCI_COMMAND ;
 scalar_t__ PCI_PM_CTRL ;
 int atomic_read (int *) ;
 int netdev_err (struct net_device*,char*,int ,...) ;
 int pci_read_config_dword (int ,scalar_t__,int *) ;

__attribute__((used)) static void
bnx2_dump_state(struct bnx2 *bp)
{
 struct net_device *dev = bp->dev;
 u32 val1, val2;

 pci_read_config_dword(bp->pdev, PCI_COMMAND, &val1);
 netdev_err(dev, "DEBUG: intr_sem[%x] PCI_CMD[%08x]\n",
     atomic_read(&bp->intr_sem), val1);
 pci_read_config_dword(bp->pdev, bp->pm_cap + PCI_PM_CTRL, &val1);
 pci_read_config_dword(bp->pdev, BNX2_PCICFG_MISC_CONFIG, &val2);
 netdev_err(dev, "DEBUG: PCI_PM[%08x] PCI_MISC_CFG[%08x]\n", val1, val2);
 netdev_err(dev, "DEBUG: EMAC_TX_STATUS[%08x] EMAC_RX_STATUS[%08x]\n",
     BNX2_RD(bp, BNX2_EMAC_TX_STATUS),
     BNX2_RD(bp, BNX2_EMAC_RX_STATUS));
 netdev_err(dev, "DEBUG: RPM_MGMT_PKT_CTRL[%08x]\n",
     BNX2_RD(bp, BNX2_RPM_MGMT_PKT_CTRL));
 netdev_err(dev, "DEBUG: HC_STATS_INTERRUPT_STATUS[%08x]\n",
     BNX2_RD(bp, BNX2_HC_STATS_INTERRUPT_STATUS));
 if (bp->flags & BNX2_FLAG_USING_MSIX)
  netdev_err(dev, "DEBUG: PBA[%08x]\n",
      BNX2_RD(bp, BNX2_PCI_GRC_WINDOW3_BASE));
}
