
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct mlx5_fpga_device {scalar_t__ last_oper_image; int state_lock; int state; int fpga_qp_err_nb; struct mlx5_core_dev* mdev; int fpga_err_nb; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
struct TYPE_2__ {int max_num_qps; } ;


 int ENOTSUPP ;
 int FPGA_ERROR ;
 int FPGA_QP_ERROR ;
 void* MLX5_CAP_FPGA (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_FPGA_IMAGE_USER ;
 int MLX5_FPGA_STATUS_FAILURE ;
 int MLX5_FPGA_STATUS_SUCCESS ;
 int MLX5_NB_INIT (int *,int ,int ) ;
 int fpga_device ;
 int fpga_err_event ;
 int fpga_qp_err_event ;
 int ieee_vendor_id ;
 int image_version ;
 int mlx5_core_reserve_gids (struct mlx5_core_dev*,unsigned int) ;
 int mlx5_core_unreserve_gids (struct mlx5_core_dev*,unsigned int) ;
 int mlx5_eq_notifier_register (struct mlx5_core_dev*,int *) ;
 int mlx5_eq_notifier_unregister (struct mlx5_core_dev*,int *) ;
 int mlx5_fpga_caps (struct mlx5_core_dev*) ;
 int mlx5_fpga_conn_device_cleanup (struct mlx5_fpga_device*) ;
 int mlx5_fpga_conn_device_init (struct mlx5_fpga_device*) ;
 int mlx5_fpga_device_brb (struct mlx5_fpga_device*) ;
 int mlx5_fpga_device_load_check (struct mlx5_fpga_device*) ;
 int mlx5_fpga_device_name (void*) ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*) ;
 int mlx5_fpga_image_name (scalar_t__) ;
 int mlx5_fpga_info (struct mlx5_fpga_device*,char*,int ,void*,int ,void*,void*,void*,void*) ;
 int sandbox_product_id ;
 int sandbox_product_version ;
 TYPE_1__ shell_caps ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mlx5_fpga_device_start(struct mlx5_core_dev *mdev)
{
 struct mlx5_fpga_device *fdev = mdev->fpga;
 unsigned int max_num_qps;
 unsigned long flags;
 u32 fpga_device_id;
 int err;

 if (!fdev)
  return 0;

 err = mlx5_fpga_device_load_check(fdev);
 if (err)
  goto out;

 err = mlx5_fpga_caps(fdev->mdev);
 if (err)
  goto out;

 fpga_device_id = MLX5_CAP_FPGA(fdev->mdev, fpga_device);
 mlx5_fpga_info(fdev, "%s:%u; %s image, version %u; SBU %06x:%04x version %d\n",
         mlx5_fpga_device_name(fpga_device_id),
         fpga_device_id,
         mlx5_fpga_image_name(fdev->last_oper_image),
         MLX5_CAP_FPGA(fdev->mdev, image_version),
         MLX5_CAP_FPGA(fdev->mdev, ieee_vendor_id),
         MLX5_CAP_FPGA(fdev->mdev, sandbox_product_id),
         MLX5_CAP_FPGA(fdev->mdev, sandbox_product_version));

 max_num_qps = MLX5_CAP_FPGA(mdev, shell_caps.max_num_qps);
 if (!max_num_qps) {
  mlx5_fpga_err(fdev, "FPGA reports 0 QPs in SHELL_CAPS\n");
  err = -ENOTSUPP;
  goto out;
 }

 err = mlx5_core_reserve_gids(mdev, max_num_qps);
 if (err)
  goto out;

 MLX5_NB_INIT(&fdev->fpga_err_nb, fpga_err_event, FPGA_ERROR);
 MLX5_NB_INIT(&fdev->fpga_qp_err_nb, fpga_qp_err_event, FPGA_QP_ERROR);
 mlx5_eq_notifier_register(fdev->mdev, &fdev->fpga_err_nb);
 mlx5_eq_notifier_register(fdev->mdev, &fdev->fpga_qp_err_nb);

 err = mlx5_fpga_conn_device_init(fdev);
 if (err)
  goto err_rsvd_gid;

 if (fdev->last_oper_image == MLX5_FPGA_IMAGE_USER) {
  err = mlx5_fpga_device_brb(fdev);
  if (err)
   goto err_conn_init;
 }

 goto out;

err_conn_init:
 mlx5_fpga_conn_device_cleanup(fdev);

err_rsvd_gid:
 mlx5_eq_notifier_unregister(fdev->mdev, &fdev->fpga_err_nb);
 mlx5_eq_notifier_unregister(fdev->mdev, &fdev->fpga_qp_err_nb);
 mlx5_core_unreserve_gids(mdev, max_num_qps);
out:
 spin_lock_irqsave(&fdev->state_lock, flags);
 fdev->state = err ? MLX5_FPGA_STATUS_FAILURE : MLX5_FPGA_STATUS_SUCCESS;
 spin_unlock_irqrestore(&fdev->state_lock, flags);
 return err;
}
