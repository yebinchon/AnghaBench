
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uar; } ;
struct mlx5_core_dev {TYPE_1__ priv; int tracer; int hv_vhca; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int mlx5_accel_ipsec_cleanup (struct mlx5_core_dev*) ;
 int mlx5_accel_ipsec_init (struct mlx5_core_dev*) ;
 int mlx5_accel_tls_cleanup (struct mlx5_core_dev*) ;
 int mlx5_accel_tls_init (struct mlx5_core_dev*) ;
 int mlx5_cleanup_fs (struct mlx5_core_dev*) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,...) ;
 int mlx5_core_set_hca_defaults (struct mlx5_core_dev*) ;
 int mlx5_ec_init (struct mlx5_core_dev*) ;
 int mlx5_eq_table_create (struct mlx5_core_dev*) ;
 int mlx5_eq_table_destroy (struct mlx5_core_dev*) ;
 int mlx5_events_start (struct mlx5_core_dev*) ;
 int mlx5_events_stop (struct mlx5_core_dev*) ;
 int mlx5_fpga_device_start (struct mlx5_core_dev*) ;
 int mlx5_fpga_device_stop (struct mlx5_core_dev*) ;
 int mlx5_fw_tracer_cleanup (int ) ;
 int mlx5_fw_tracer_init (int ) ;
 int mlx5_get_uars_page (struct mlx5_core_dev*) ;
 int mlx5_hv_vhca_cleanup (int ) ;
 int mlx5_hv_vhca_init (int ) ;
 int mlx5_init_fs (struct mlx5_core_dev*) ;
 int mlx5_irq_table_create (struct mlx5_core_dev*) ;
 int mlx5_irq_table_destroy (struct mlx5_core_dev*) ;
 int mlx5_pagealloc_start (struct mlx5_core_dev*) ;
 int mlx5_pagealloc_stop (struct mlx5_core_dev*) ;
 int mlx5_put_uars_page (struct mlx5_core_dev*,int ) ;
 int mlx5_sriov_attach (struct mlx5_core_dev*) ;
 int mlx5_sriov_detach (struct mlx5_core_dev*) ;

__attribute__((used)) static int mlx5_load(struct mlx5_core_dev *dev)
{
 int err;

 dev->priv.uar = mlx5_get_uars_page(dev);
 if (IS_ERR(dev->priv.uar)) {
  mlx5_core_err(dev, "Failed allocating uar, aborting\n");
  err = PTR_ERR(dev->priv.uar);
  return err;
 }

 mlx5_events_start(dev);
 mlx5_pagealloc_start(dev);

 err = mlx5_irq_table_create(dev);
 if (err) {
  mlx5_core_err(dev, "Failed to alloc IRQs\n");
  goto err_irq_table;
 }

 err = mlx5_eq_table_create(dev);
 if (err) {
  mlx5_core_err(dev, "Failed to create EQs\n");
  goto err_eq_table;
 }

 err = mlx5_fw_tracer_init(dev->tracer);
 if (err) {
  mlx5_core_err(dev, "Failed to init FW tracer\n");
  goto err_fw_tracer;
 }

 mlx5_hv_vhca_init(dev->hv_vhca);

 err = mlx5_fpga_device_start(dev);
 if (err) {
  mlx5_core_err(dev, "fpga device start failed %d\n", err);
  goto err_fpga_start;
 }

 err = mlx5_accel_ipsec_init(dev);
 if (err) {
  mlx5_core_err(dev, "IPSec device start failed %d\n", err);
  goto err_ipsec_start;
 }

 err = mlx5_accel_tls_init(dev);
 if (err) {
  mlx5_core_err(dev, "TLS device start failed %d\n", err);
  goto err_tls_start;
 }

 err = mlx5_init_fs(dev);
 if (err) {
  mlx5_core_err(dev, "Failed to init flow steering\n");
  goto err_fs;
 }

 err = mlx5_core_set_hca_defaults(dev);
 if (err) {
  mlx5_core_err(dev, "Failed to set hca defaults\n");
  goto err_sriov;
 }

 err = mlx5_sriov_attach(dev);
 if (err) {
  mlx5_core_err(dev, "sriov init failed %d\n", err);
  goto err_sriov;
 }

 err = mlx5_ec_init(dev);
 if (err) {
  mlx5_core_err(dev, "Failed to init embedded CPU\n");
  goto err_ec;
 }

 return 0;

err_ec:
 mlx5_sriov_detach(dev);
err_sriov:
 mlx5_cleanup_fs(dev);
err_fs:
 mlx5_accel_tls_cleanup(dev);
err_tls_start:
 mlx5_accel_ipsec_cleanup(dev);
err_ipsec_start:
 mlx5_fpga_device_stop(dev);
err_fpga_start:
 mlx5_hv_vhca_cleanup(dev->hv_vhca);
 mlx5_fw_tracer_cleanup(dev->tracer);
err_fw_tracer:
 mlx5_eq_table_destroy(dev);
err_eq_table:
 mlx5_irq_table_destroy(dev);
err_irq_table:
 mlx5_pagealloc_stop(dev);
 mlx5_events_stop(dev);
 mlx5_put_uars_page(dev, dev->priv.uar);
 return err;
}
