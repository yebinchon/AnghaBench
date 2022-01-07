
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct enic {int vdev; int pp; int priv_flags; int change_mtu_work; int reset; } ;


 int ENIC_SRIOV_ENABLED ;
 int cancel_work_sync (int *) ;
 int enic_dev_deinit (struct enic*) ;
 int enic_iounmap (struct enic*) ;
 scalar_t__ enic_sriov_enabled (struct enic*) ;
 int free_netdev (struct net_device*) ;
 int kfree (int ) ;
 struct enic* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;
 int vnic_dev_close (int ) ;
 int vnic_dev_unregister (int ) ;

__attribute__((used)) static void enic_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);

 if (netdev) {
  struct enic *enic = netdev_priv(netdev);

  cancel_work_sync(&enic->reset);
  cancel_work_sync(&enic->change_mtu_work);
  unregister_netdev(netdev);
  enic_dev_deinit(enic);
  vnic_dev_close(enic->vdev);






  kfree(enic->pp);
  vnic_dev_unregister(enic->vdev);
  enic_iounmap(enic);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  free_netdev(netdev);
 }
}
