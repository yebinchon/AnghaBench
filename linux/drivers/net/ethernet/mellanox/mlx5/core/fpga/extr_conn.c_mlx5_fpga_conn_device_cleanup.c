
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uar; int pdn; int mkey; } ;
struct mlx5_fpga_device {int mdev; TYPE_1__ conn_res; } ;


 int mlx5_core_dealloc_pd (int ,int ) ;
 int mlx5_core_destroy_mkey (int ,int *) ;
 int mlx5_nic_vport_disable_roce (int ) ;
 int mlx5_put_uars_page (int ,int ) ;

void mlx5_fpga_conn_device_cleanup(struct mlx5_fpga_device *fdev)
{
 mlx5_core_destroy_mkey(fdev->mdev, &fdev->conn_res.mkey);
 mlx5_core_dealloc_pd(fdev->mdev, fdev->conn_res.pdn);
 mlx5_put_uars_page(fdev->mdev, fdev->conn_res.uar);
 mlx5_nic_vport_disable_roce(fdev->mdev);
}
