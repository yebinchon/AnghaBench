
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int pdev; } ;


 int MLX5E_SLOW_PCI_RATIO ;
 int mlx5_core_dbg_once (struct mlx5_core_dev*,char*,int,int) ;
 int mlx5e_port_max_linkspeed (struct mlx5_core_dev*,int*) ;
 int pcie_bandwidth_available (int ,int *,int *,int *) ;

__attribute__((used)) static bool slow_pci_heuristic(struct mlx5_core_dev *mdev)
{
 u32 link_speed = 0;
 u32 pci_bw = 0;

 mlx5e_port_max_linkspeed(mdev, &link_speed);
 pci_bw = pcie_bandwidth_available(mdev->pdev, ((void*)0), ((void*)0), ((void*)0));
 mlx5_core_dbg_once(mdev, "Max link speed = %d, PCI BW = %d\n",
      link_speed, pci_bw);



 return link_speed && pci_bw &&
  link_speed > (2) * pci_bw;
}
