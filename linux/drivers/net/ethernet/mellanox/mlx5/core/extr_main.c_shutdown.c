
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_info (struct mlx5_core_dev*,char*) ;
 int mlx5_pci_disable_device (struct mlx5_core_dev*) ;
 int mlx5_try_fast_unload (struct mlx5_core_dev*) ;
 int mlx5_unload_one (struct mlx5_core_dev*,int) ;
 struct mlx5_core_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void shutdown(struct pci_dev *pdev)
{
 struct mlx5_core_dev *dev = pci_get_drvdata(pdev);
 int err;

 mlx5_core_info(dev, "Shutdown was called\n");
 err = mlx5_try_fast_unload(dev);
 if (err)
  mlx5_unload_one(dev, 0);
 mlx5_pci_disable_device(dev);
}
