
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int mlx5_device_disable_sriov (struct mlx5_core_dev*) ;
 int mlx5_device_enable_sriov (struct mlx5_core_dev*,int) ;
 int pci_enable_sriov (struct pci_dev*,int) ;
 struct mlx5_core_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static int mlx5_sriov_enable(struct pci_dev *pdev, int num_vfs)
{
 struct mlx5_core_dev *dev = pci_get_drvdata(pdev);
 int err;

 err = mlx5_device_enable_sriov(dev, num_vfs);
 if (err) {
  mlx5_core_warn(dev, "mlx5_device_enable_sriov failed : %d\n", err);
  return err;
 }

 err = pci_enable_sriov(pdev, num_vfs);
 if (err) {
  mlx5_core_warn(dev, "pci_enable_sriov failed : %d\n", err);
  mlx5_device_disable_sriov(dev);
 }
 return err;
}
