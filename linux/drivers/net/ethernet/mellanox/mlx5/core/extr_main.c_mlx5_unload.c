
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uar; } ;
struct mlx5_core_dev {TYPE_1__ priv; int tracer; int hv_vhca; } ;


 int mlx5_accel_ipsec_cleanup (struct mlx5_core_dev*) ;
 int mlx5_accel_tls_cleanup (struct mlx5_core_dev*) ;
 int mlx5_cleanup_fs (struct mlx5_core_dev*) ;
 int mlx5_ec_cleanup (struct mlx5_core_dev*) ;
 int mlx5_eq_table_destroy (struct mlx5_core_dev*) ;
 int mlx5_events_stop (struct mlx5_core_dev*) ;
 int mlx5_fpga_device_stop (struct mlx5_core_dev*) ;
 int mlx5_fw_tracer_cleanup (int ) ;
 int mlx5_hv_vhca_cleanup (int ) ;
 int mlx5_irq_table_destroy (struct mlx5_core_dev*) ;
 int mlx5_pagealloc_stop (struct mlx5_core_dev*) ;
 int mlx5_put_uars_page (struct mlx5_core_dev*,int ) ;
 int mlx5_sriov_detach (struct mlx5_core_dev*) ;

__attribute__((used)) static void mlx5_unload(struct mlx5_core_dev *dev)
{
 mlx5_ec_cleanup(dev);
 mlx5_sriov_detach(dev);
 mlx5_cleanup_fs(dev);
 mlx5_accel_ipsec_cleanup(dev);
 mlx5_accel_tls_cleanup(dev);
 mlx5_fpga_device_stop(dev);
 mlx5_hv_vhca_cleanup(dev->hv_vhca);
 mlx5_fw_tracer_cleanup(dev->tracer);
 mlx5_eq_table_destroy(dev);
 mlx5_irq_table_destroy(dev);
 mlx5_pagealloc_stop(dev);
 mlx5_events_stop(dev);
 mlx5_put_uars_page(dev, dev->priv.uar);
}
