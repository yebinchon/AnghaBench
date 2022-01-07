
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_sq_param {int dummy; } ;
struct mlx5e_modify_sq_param {int next_state; int curr_state; int member_0; } ;
struct mlx5e_create_sq_param {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_SQC_STATE_RDY ;
 int MLX5_SQC_STATE_RST ;
 int mlx5e_create_sq (struct mlx5_core_dev*,struct mlx5e_sq_param*,struct mlx5e_create_sq_param*,int *) ;
 int mlx5e_destroy_sq (struct mlx5_core_dev*,int ) ;
 int mlx5e_modify_sq (struct mlx5_core_dev*,int ,struct mlx5e_modify_sq_param*) ;

__attribute__((used)) static int mlx5e_create_sq_rdy(struct mlx5_core_dev *mdev,
          struct mlx5e_sq_param *param,
          struct mlx5e_create_sq_param *csp,
          u32 *sqn)
{
 struct mlx5e_modify_sq_param msp = {0};
 int err;

 err = mlx5e_create_sq(mdev, param, csp, sqn);
 if (err)
  return err;

 msp.curr_state = MLX5_SQC_STATE_RST;
 msp.next_state = MLX5_SQC_STATE_RDY;
 err = mlx5e_modify_sq(mdev, *sqn, &msp);
 if (err)
  mlx5e_destroy_sq(mdev, *sqn);

 return err;
}
