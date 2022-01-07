
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int pdev; } ;


 scalar_t__ pci_num_vf (int ) ;

__attribute__((used)) static inline bool mlx5_sriov_is_enabled(struct mlx5_core_dev *dev)
{
 return pci_num_vf(dev->pdev) ? 1 : 0;
}
