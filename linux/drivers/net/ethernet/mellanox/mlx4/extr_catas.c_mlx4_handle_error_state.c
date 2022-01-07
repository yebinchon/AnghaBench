
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev_persistent {int interface_state; int interface_state_mutex; int dev; int pdev; } ;


 int MLX4_INTERFACE_STATE_DELETION ;
 int MLX4_INTERFACE_STATE_UP ;
 int mlx4_enter_error_state (struct mlx4_dev_persistent*) ;
 int mlx4_info (int ,char*,int) ;
 int mlx4_restart_one (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mlx4_handle_error_state(struct mlx4_dev_persistent *persist)
{
 int err = 0;

 mlx4_enter_error_state(persist);
 mutex_lock(&persist->interface_state_mutex);
 if (persist->interface_state & MLX4_INTERFACE_STATE_UP &&
     !(persist->interface_state & MLX4_INTERFACE_STATE_DELETION)) {
  err = mlx4_restart_one(persist->pdev);
  mlx4_info(persist->dev, "mlx4_restart_one was ended, ret=%d\n",
     err);
 }
 mutex_unlock(&persist->interface_state_mutex);
}
