
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; int irq; } ;
struct net_device {int name; } ;
struct igc_adapter {int flags; int * q_vector; struct pci_dev* pdev; struct net_device* netdev; } ;


 int IGC_FLAG_HAS_MSI ;
 int IGC_FLAG_HAS_MSIX ;
 int IRQF_SHARED ;
 int dev_err (int *,char*,int) ;
 int igc_assign_vector (int ,int ) ;
 int igc_clear_interrupt_scheme (struct igc_adapter*) ;
 int igc_configure (struct igc_adapter*) ;
 int igc_free_all_rx_resources (struct igc_adapter*) ;
 int igc_free_all_tx_resources (struct igc_adapter*) ;
 int igc_init_interrupt_scheme (struct igc_adapter*,int) ;
 int igc_intr ;
 int igc_intr_msi ;
 int igc_request_msix (struct igc_adapter*) ;
 int igc_reset_interrupt_capability (struct igc_adapter*) ;
 int igc_setup_all_rx_resources (struct igc_adapter*) ;
 int igc_setup_all_tx_resources (struct igc_adapter*) ;
 int request_irq (int ,int *,int ,int ,struct igc_adapter*) ;

__attribute__((used)) static int igc_request_irq(struct igc_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 int err = 0;

 if (adapter->flags & IGC_FLAG_HAS_MSIX) {
  err = igc_request_msix(adapter);
  if (!err)
   goto request_done;

  igc_free_all_tx_resources(adapter);
  igc_free_all_rx_resources(adapter);

  igc_clear_interrupt_scheme(adapter);
  err = igc_init_interrupt_scheme(adapter, 0);
  if (err)
   goto request_done;
  igc_setup_all_tx_resources(adapter);
  igc_setup_all_rx_resources(adapter);
  igc_configure(adapter);
 }

 igc_assign_vector(adapter->q_vector[0], 0);

 if (adapter->flags & IGC_FLAG_HAS_MSI) {
  err = request_irq(pdev->irq, &igc_intr_msi, 0,
      netdev->name, adapter);
  if (!err)
   goto request_done;


  igc_reset_interrupt_capability(adapter);
  adapter->flags &= ~IGC_FLAG_HAS_MSI;
 }

 err = request_irq(pdev->irq, &igc_intr, IRQF_SHARED,
     netdev->name, adapter);

 if (err)
  dev_err(&pdev->dev, "Error %d getting interrupt\n",
   err);

request_done:
 return err;
}
