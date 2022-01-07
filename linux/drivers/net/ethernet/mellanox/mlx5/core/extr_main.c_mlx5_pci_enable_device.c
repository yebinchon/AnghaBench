
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlx5_core_dev {scalar_t__ pci_status; int pci_status_mutex; struct pci_dev* pdev; } ;


 scalar_t__ MLX5_PCI_STATUS_DISABLED ;
 scalar_t__ MLX5_PCI_STATUS_ENABLED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_enable_device (struct pci_dev*) ;

__attribute__((used)) static int mlx5_pci_enable_device(struct mlx5_core_dev *dev)
{
 struct pci_dev *pdev = dev->pdev;
 int err = 0;

 mutex_lock(&dev->pci_status_mutex);
 if (dev->pci_status == MLX5_PCI_STATUS_DISABLED) {
  err = pci_enable_device(pdev);
  if (!err)
   dev->pci_status = MLX5_PCI_STATUS_ENABLED;
 }
 mutex_unlock(&dev->pci_status_mutex);

 return err;
}
