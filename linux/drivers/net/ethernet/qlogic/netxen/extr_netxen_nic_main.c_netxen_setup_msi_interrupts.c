
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; int irq; } ;
struct TYPE_3__ {size_t pci_func; } ;
struct netxen_adapter {int max_sds_rings; TYPE_2__* msix_entries; int tgt_status_reg; int flags; TYPE_1__ ahw; scalar_t__ rss_supported; scalar_t__ msix_supported; struct pci_dev* pdev; } ;
struct TYPE_4__ {int vector; } ;


 int EIO ;
 int NETXEN_NIC_MSIX_ENABLED ;
 int NETXEN_NIC_MSI_ENABLED ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int * msi_tgt_status ;
 int netxen_get_ioaddr (struct netxen_adapter*,int ) ;
 int netxen_init_msix_entries (struct netxen_adapter*,int) ;
 int netxen_set_msix_bit (struct pci_dev*,int) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_enable_msix_range (struct pci_dev*,TYPE_2__*,int,int) ;
 scalar_t__ use_msi ;

__attribute__((used)) static int netxen_setup_msi_interrupts(struct netxen_adapter *adapter,
           int num_msix)
{
 struct pci_dev *pdev = adapter->pdev;
 u32 value;
 int err;

 if (adapter->msix_supported) {
  netxen_init_msix_entries(adapter, num_msix);
  err = pci_enable_msix_range(pdev, adapter->msix_entries,
         num_msix, num_msix);
  if (err > 0) {
   adapter->flags |= NETXEN_NIC_MSIX_ENABLED;
   netxen_set_msix_bit(pdev, 1);

   if (adapter->rss_supported)
    adapter->max_sds_rings = num_msix;

   dev_info(&pdev->dev, "using msi-x interrupts\n");
   return 0;
  }

 }

 if (use_msi && !pci_enable_msi(pdev)) {
  value = msi_tgt_status[adapter->ahw.pci_func];
  adapter->flags |= NETXEN_NIC_MSI_ENABLED;
  adapter->tgt_status_reg = netxen_get_ioaddr(adapter, value);
  adapter->msix_entries[0].vector = pdev->irq;
  dev_info(&pdev->dev, "using msi interrupts\n");
  return 0;
 }

 dev_err(&pdev->dev, "Failed to acquire MSI-X/MSI interrupt vector\n");
 return -EIO;
}
