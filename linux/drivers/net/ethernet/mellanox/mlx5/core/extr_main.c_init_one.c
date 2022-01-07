
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dev; } ;
struct mlx5_core_dev {int coredev_type; struct pci_dev* pdev; int * device; } ;
struct devlink {int dummy; } ;


 int ENOMEM ;
 int MLX5_COREDEV_PF ;
 int MLX5_COREDEV_VF ;
 int MLX5_IB_MOD ;
 int MLX5_PCI_DEV_IS_VF ;
 int dev_err (int *,char*,...) ;
 struct mlx5_core_dev* devlink_priv (struct devlink*) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;
 int mlx5_crdump_enable (struct mlx5_core_dev*) ;
 struct devlink* mlx5_devlink_alloc () ;
 int mlx5_devlink_free (struct devlink*) ;
 int mlx5_devlink_register (struct devlink*,int *) ;
 int mlx5_load_one (struct mlx5_core_dev*,int) ;
 int mlx5_mdev_init (struct mlx5_core_dev*,int ) ;
 int mlx5_mdev_uninit (struct mlx5_core_dev*) ;
 int mlx5_pci_close (struct mlx5_core_dev*) ;
 int mlx5_pci_init (struct mlx5_core_dev*,struct pci_dev*,struct pci_device_id const*) ;
 int mlx5_unload_one (struct mlx5_core_dev*,int) ;
 int pci_save_state (struct pci_dev*) ;
 int prof_sel ;
 int request_module_nowait (int ) ;

__attribute__((used)) static int init_one(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct mlx5_core_dev *dev;
 struct devlink *devlink;
 int err;

 devlink = mlx5_devlink_alloc();
 if (!devlink) {
  dev_err(&pdev->dev, "devlink alloc failed\n");
  return -ENOMEM;
 }

 dev = devlink_priv(devlink);
 dev->device = &pdev->dev;
 dev->pdev = pdev;

 dev->coredev_type = id->driver_data & MLX5_PCI_DEV_IS_VF ?
    MLX5_COREDEV_VF : MLX5_COREDEV_PF;

 err = mlx5_mdev_init(dev, prof_sel);
 if (err)
  goto mdev_init_err;

 err = mlx5_pci_init(dev, pdev, id);
 if (err) {
  mlx5_core_err(dev, "mlx5_pci_init failed with error code %d\n",
         err);
  goto pci_init_err;
 }

 err = mlx5_load_one(dev, 1);
 if (err) {
  mlx5_core_err(dev, "mlx5_load_one failed with error code %d\n",
         err);
  goto err_load_one;
 }

 request_module_nowait(MLX5_IB_MOD);

 err = mlx5_devlink_register(devlink, &pdev->dev);
 if (err)
  goto clean_load;

 err = mlx5_crdump_enable(dev);
 if (err)
  dev_err(&pdev->dev, "mlx5_crdump_enable failed with error code %d\n", err);

 pci_save_state(pdev);
 return 0;

clean_load:
 mlx5_unload_one(dev, 1);

err_load_one:
 mlx5_pci_close(dev);
pci_init_err:
 mlx5_mdev_uninit(dev);
mdev_init_err:
 mlx5_devlink_free(devlink);

 return err;
}
