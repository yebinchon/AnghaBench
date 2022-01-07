
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_fpga_device {int state; int mdev; int state_lock; } ;
struct TYPE_2__ {void* raw; } ;
struct mlx5_eqe {TYPE_1__ data; } ;





 int MLX5_GET (int ,void*,int ) ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int fpga_error_event ;
 int fpga_qp_error_event ;
 char* mlx5_fpga_qp_syndrome_to_string (int ) ;
 char* mlx5_fpga_syndrome_to_string (int ) ;
 int mlx5_fpga_warn (struct mlx5_fpga_device*,char*,int ,char const*) ;
 int mlx5_fpga_warn_ratelimited (struct mlx5_fpga_device*,char*,int ,char const*) ;
 int mlx5_trigger_health_work (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mlx5_fpga_event(struct mlx5_fpga_device *fdev,
      unsigned long event, void *eqe)
{
 void *data = ((struct mlx5_eqe *)eqe)->data.raw;
 const char *event_name;
 bool teardown = 0;
 unsigned long flags;
 u8 syndrome;

 switch (event) {
 case 130:
  syndrome = MLX5_GET(fpga_error_event, data, syndrome);
  event_name = mlx5_fpga_syndrome_to_string(syndrome);
  break;
 case 129:
  syndrome = MLX5_GET(fpga_qp_error_event, data, syndrome);
  event_name = mlx5_fpga_qp_syndrome_to_string(syndrome);
  break;
 default:
  return NOTIFY_DONE;
 }

 spin_lock_irqsave(&fdev->state_lock, flags);
 switch (fdev->state) {
 case 128:
  mlx5_fpga_warn(fdev, "Error %u: %s\n", syndrome, event_name);
  teardown = 1;
  break;
 default:
  mlx5_fpga_warn_ratelimited(fdev, "Unexpected error event %u: %s\n",
        syndrome, event_name);
 }
 spin_unlock_irqrestore(&fdev->state_lock, flags);





 if (teardown)
  mlx5_trigger_health_work(fdev->mdev);

 return NOTIFY_OK;
}
