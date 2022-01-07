
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxgedev {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct __vxge_hw_device {struct net_device* ndev; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int VXGE_LL_FULL_RESET ;
 int do_vxge_reset (struct vxgedev*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct vxgedev* netdev_priv (struct net_device*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct __vxge_hw_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t vxge_io_slot_reset(struct pci_dev *pdev)
{
 struct __vxge_hw_device *hldev = pci_get_drvdata(pdev);
 struct net_device *netdev = hldev->ndev;

 struct vxgedev *vdev = netdev_priv(netdev);

 if (pci_enable_device(pdev)) {
  netdev_err(netdev, "Cannot re-enable device after reset\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }

 pci_set_master(pdev);
 do_vxge_reset(vdev, VXGE_LL_FULL_RESET);

 return PCI_ERS_RESULT_RECOVERED;
}
