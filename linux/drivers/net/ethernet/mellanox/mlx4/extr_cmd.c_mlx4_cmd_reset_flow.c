
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx4_dev {int persist; } ;


 int mlx4_enter_error_state (int ) ;
 scalar_t__ mlx4_internal_err_reset ;
 int mlx4_internal_err_ret_value (struct mlx4_dev*,int ,int ) ;

__attribute__((used)) static int mlx4_cmd_reset_flow(struct mlx4_dev *dev, u16 op, u8 op_modifier,
          int err)
{



 if (mlx4_internal_err_reset) {
  mlx4_enter_error_state(dev->persist);
  err = mlx4_internal_err_ret_value(dev, op, op_modifier);
 }

 return err;
}
