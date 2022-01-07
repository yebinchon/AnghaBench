
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_2__ {scalar_t__ pci_status; int pci_status_mutex; struct pci_dev* pdev; } ;


 scalar_t__ MLX4_PCI_STATUS_DISABLED ;
 scalar_t__ MLX4_PCI_STATUS_ENABLED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_enable_device (struct pci_dev*) ;

__attribute__((used)) static int mlx4_pci_enable_device(struct mlx4_dev *dev)
{
 struct pci_dev *pdev = dev->persist->pdev;
 int err = 0;

 mutex_lock(&dev->persist->pci_status_mutex);
 if (dev->persist->pci_status == MLX4_PCI_STATUS_DISABLED) {
  err = pci_enable_device(pdev);
  if (!err)
   dev->persist->pci_status = MLX4_PCI_STATUS_ENABLED;
 }
 mutex_unlock(&dev->persist->pci_status_mutex);

 return err;
}
