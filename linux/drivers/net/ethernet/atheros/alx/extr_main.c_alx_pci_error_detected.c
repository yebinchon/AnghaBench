
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct alx_priv {struct net_device* dev; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int alx_halt (struct alx_priv*) ;
 int dev_info (int *,char*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 struct alx_priv* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static pci_ers_result_t alx_pci_error_detected(struct pci_dev *pdev,
            pci_channel_state_t state)
{
 struct alx_priv *alx = pci_get_drvdata(pdev);
 struct net_device *netdev = alx->dev;
 pci_ers_result_t rc = PCI_ERS_RESULT_NEED_RESET;

 dev_info(&pdev->dev, "pci error detected\n");

 rtnl_lock();

 if (netif_running(netdev)) {
  netif_device_detach(netdev);
  alx_halt(alx);
 }

 if (state == pci_channel_io_perm_failure)
  rc = PCI_ERS_RESULT_DISCONNECT;
 else
  pci_disable_device(pdev);

 rtnl_unlock();

 return rc;
}
