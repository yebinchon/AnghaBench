
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; int irq; } ;
struct net_device {int name; } ;
struct igb_adapter {int flags; int * q_vector; struct pci_dev* pdev; struct net_device* netdev; } ;


 int IGB_FLAG_HAS_MSI ;
 int IGB_FLAG_HAS_MSIX ;
 int IRQF_SHARED ;
 int dev_err (int *,char*,int) ;
 int igb_assign_vector (int ,int ) ;
 int igb_clear_interrupt_scheme (struct igb_adapter*) ;
 int igb_configure (struct igb_adapter*) ;
 int igb_free_all_rx_resources (struct igb_adapter*) ;
 int igb_free_all_tx_resources (struct igb_adapter*) ;
 int igb_init_interrupt_scheme (struct igb_adapter*,int) ;
 int igb_intr ;
 int igb_intr_msi ;
 int igb_request_msix (struct igb_adapter*) ;
 int igb_reset_interrupt_capability (struct igb_adapter*) ;
 int igb_setup_all_rx_resources (struct igb_adapter*) ;
 int igb_setup_all_tx_resources (struct igb_adapter*) ;
 int request_irq (int ,int ,int ,int ,struct igb_adapter*) ;

__attribute__((used)) static int igb_request_irq(struct igb_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 int err = 0;

 if (adapter->flags & IGB_FLAG_HAS_MSIX) {
  err = igb_request_msix(adapter);
  if (!err)
   goto request_done;

  igb_free_all_tx_resources(adapter);
  igb_free_all_rx_resources(adapter);

  igb_clear_interrupt_scheme(adapter);
  err = igb_init_interrupt_scheme(adapter, 0);
  if (err)
   goto request_done;

  igb_setup_all_tx_resources(adapter);
  igb_setup_all_rx_resources(adapter);
  igb_configure(adapter);
 }

 igb_assign_vector(adapter->q_vector[0], 0);

 if (adapter->flags & IGB_FLAG_HAS_MSI) {
  err = request_irq(pdev->irq, igb_intr_msi, 0,
      netdev->name, adapter);
  if (!err)
   goto request_done;


  igb_reset_interrupt_capability(adapter);
  adapter->flags &= ~IGB_FLAG_HAS_MSI;
 }

 err = request_irq(pdev->irq, igb_intr, IRQF_SHARED,
     netdev->name, adapter);

 if (err)
  dev_err(&pdev->dev, "Error %d getting interrupt\n",
   err);

request_done:
 return err;
}
