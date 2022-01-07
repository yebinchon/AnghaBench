
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlx4_dev_persistent {int interface_state; int interface_state_mutex; struct mlx4_dev* dev; } ;
struct mlx4_dev {int dummy; } ;
typedef int pm_message_t ;


 int MLX4_INTERFACE_STATE_UP ;
 int mlx4_err (struct mlx4_dev*,char*) ;
 int mlx4_unload_one (struct pci_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_dev_persistent* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static int mlx4_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct mlx4_dev_persistent *persist = pci_get_drvdata(pdev);
 struct mlx4_dev *dev = persist->dev;

 mlx4_err(dev, "suspend was called\n");
 mutex_lock(&persist->interface_state_mutex);
 if (persist->interface_state & MLX4_INTERFACE_STATE_UP)
  mlx4_unload_one(pdev);
 mutex_unlock(&persist->interface_state_mutex);

 return 0;
}
