
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ pci_ers_result_t ;


 scalar_t__ PCI_ERS_RESULT_DISCONNECT ;
 scalar_t__ PCI_ERS_RESULT_RECOVERED ;
 int dev_close (struct net_device*) ;
 int dev_err (int *,char*) ;
 struct tg3* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int tg3_napi_enable (struct tg3*) ;
 int tg3_power_up (struct tg3*) ;

__attribute__((used)) static pci_ers_result_t tg3_io_slot_reset(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct tg3 *tp = netdev_priv(netdev);
 pci_ers_result_t rc = PCI_ERS_RESULT_DISCONNECT;
 int err;

 rtnl_lock();

 if (pci_enable_device(pdev)) {
  dev_err(&pdev->dev,
   "Cannot re-enable PCI device after reset.\n");
  goto done;
 }

 pci_set_master(pdev);
 pci_restore_state(pdev);
 pci_save_state(pdev);

 if (!netdev || !netif_running(netdev)) {
  rc = PCI_ERS_RESULT_RECOVERED;
  goto done;
 }

 err = tg3_power_up(tp);
 if (err)
  goto done;

 rc = PCI_ERS_RESULT_RECOVERED;

done:
 if (rc != PCI_ERS_RESULT_RECOVERED && netdev && netif_running(netdev)) {
  tg3_napi_enable(tp);
  dev_close(netdev);
 }
 rtnl_unlock();

 return rc;
}
