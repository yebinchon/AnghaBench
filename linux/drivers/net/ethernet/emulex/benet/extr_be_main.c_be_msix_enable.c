
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct be_adapter {int num_msix_roce_vec; int num_msix_vec; TYPE_2__* msix_entries; TYPE_1__* pdev; int cfg_num_tx_irqs; int cfg_num_rx_irqs; } ;
struct TYPE_4__ {unsigned int entry; } ;
struct TYPE_3__ {struct device dev; } ;


 int MIN_MSIX_VECTORS ;
 unsigned int be_max_any_irqs (struct be_adapter*) ;
 unsigned int be_max_func_eqs (struct be_adapter*) ;
 unsigned int be_max_nic_eqs (struct be_adapter*) ;
 scalar_t__ be_roce_supported (struct be_adapter*) ;
 scalar_t__ be_virtfn (struct be_adapter*) ;
 int dev_info (struct device*,char*,int) ;
 int dev_warn (struct device*,char*) ;
 int max (int ,int ) ;
 unsigned int min (unsigned int,int ) ;
 int num_online_cpus () ;
 int pci_enable_msix_range (TYPE_1__*,TYPE_2__*,int,int) ;

__attribute__((used)) static int be_msix_enable(struct be_adapter *adapter)
{
 unsigned int i, max_roce_eqs;
 struct device *dev = &adapter->pdev->dev;
 int num_vec;





 if (be_roce_supported(adapter)) {
  max_roce_eqs =
   be_max_func_eqs(adapter) - be_max_nic_eqs(adapter);
  max_roce_eqs = min(max_roce_eqs, num_online_cpus());
  num_vec = be_max_any_irqs(adapter) + max_roce_eqs;
 } else {
  num_vec = max(adapter->cfg_num_rx_irqs,
         adapter->cfg_num_tx_irqs);
 }

 for (i = 0; i < num_vec; i++)
  adapter->msix_entries[i].entry = i;

 num_vec = pci_enable_msix_range(adapter->pdev, adapter->msix_entries,
     MIN_MSIX_VECTORS, num_vec);
 if (num_vec < 0)
  goto fail;

 if (be_roce_supported(adapter) && num_vec > MIN_MSIX_VECTORS) {
  adapter->num_msix_roce_vec = num_vec / 2;
  dev_info(dev, "enabled %d MSI-x vector(s) for RoCE\n",
    adapter->num_msix_roce_vec);
 }

 adapter->num_msix_vec = num_vec - adapter->num_msix_roce_vec;

 dev_info(dev, "enabled %d MSI-x vector(s) for NIC\n",
   adapter->num_msix_vec);
 return 0;

fail:
 dev_warn(dev, "MSIx enable failed\n");


 if (be_virtfn(adapter))
  return num_vec;
 return 0;
}
