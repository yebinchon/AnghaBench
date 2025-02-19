
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct gem {TYPE_1__* pdev; scalar_t__ regs; } ;
struct TYPE_3__ {scalar_t__ vendor; scalar_t__ device; } ;


 scalar_t__ GREG_PCIESTAT ;
 int GREG_PCIESTAT_BADACK ;
 int GREG_PCIESTAT_DTRTO ;
 int GREG_PCIESTAT_OTHER ;
 scalar_t__ PCI_DEVICE_ID_SUN_GEM ;
 int PCI_STATUS ;
 int PCI_STATUS_DETECTED_PARITY ;
 int PCI_STATUS_PARITY ;
 int PCI_STATUS_REC_MASTER_ABORT ;
 int PCI_STATUS_REC_TARGET_ABORT ;
 int PCI_STATUS_SIG_SYSTEM_ERROR ;
 int PCI_STATUS_SIG_TARGET_ABORT ;
 scalar_t__ PCI_VENDOR_ID_SUN ;
 int netdev_err (struct net_device*,char*,...) ;
 int pci_read_config_word (TYPE_1__*,int ,int*) ;
 int pci_write_config_word (TYPE_1__*,int ,int) ;
 int pr_cont (char*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int gem_pci_interrupt(struct net_device *dev, struct gem *gp, u32 gem_status)
{
 u32 pci_estat = readl(gp->regs + GREG_PCIESTAT);

 if (gp->pdev->vendor == PCI_VENDOR_ID_SUN &&
     gp->pdev->device == PCI_DEVICE_ID_SUN_GEM) {
  netdev_err(dev, "PCI error [%04x]", pci_estat);

  if (pci_estat & GREG_PCIESTAT_BADACK)
   pr_cont(" <No ACK64# during ABS64 cycle>");
  if (pci_estat & GREG_PCIESTAT_DTRTO)
   pr_cont(" <Delayed transaction timeout>");
  if (pci_estat & GREG_PCIESTAT_OTHER)
   pr_cont(" <other>");
  pr_cont("\n");
 } else {
  pci_estat |= GREG_PCIESTAT_OTHER;
  netdev_err(dev, "PCI error\n");
 }

 if (pci_estat & GREG_PCIESTAT_OTHER) {
  u16 pci_cfg_stat;




  pci_read_config_word(gp->pdev, PCI_STATUS,
         &pci_cfg_stat);
  netdev_err(dev, "Read PCI cfg space status [%04x]\n",
      pci_cfg_stat);
  if (pci_cfg_stat & PCI_STATUS_PARITY)
   netdev_err(dev, "PCI parity error detected\n");
  if (pci_cfg_stat & PCI_STATUS_SIG_TARGET_ABORT)
   netdev_err(dev, "PCI target abort\n");
  if (pci_cfg_stat & PCI_STATUS_REC_TARGET_ABORT)
   netdev_err(dev, "PCI master acks target abort\n");
  if (pci_cfg_stat & PCI_STATUS_REC_MASTER_ABORT)
   netdev_err(dev, "PCI master abort\n");
  if (pci_cfg_stat & PCI_STATUS_SIG_SYSTEM_ERROR)
   netdev_err(dev, "PCI system error SERR#\n");
  if (pci_cfg_stat & PCI_STATUS_DETECTED_PARITY)
   netdev_err(dev, "PCI parity error\n");


  pci_cfg_stat &= (PCI_STATUS_PARITY |
     PCI_STATUS_SIG_TARGET_ABORT |
     PCI_STATUS_REC_TARGET_ABORT |
     PCI_STATUS_REC_MASTER_ABORT |
     PCI_STATUS_SIG_SYSTEM_ERROR |
     PCI_STATUS_DETECTED_PARITY);
  pci_write_config_word(gp->pdev,
          PCI_STATUS, pci_cfg_stat);
 }


 return 1;
}
