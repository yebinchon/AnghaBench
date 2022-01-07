
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_qp {int uid; int qpn; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_GET (int ,int *,int ) ;
 int MLX5_RES_SQ ;
 int create_resource_common (struct mlx5_core_dev*,struct mlx5_core_qp*,int ) ;
 int create_sq_in ;
 int destroy_sq_tracked (struct mlx5_core_dev*,int ,int ) ;
 int mlx5_core_create_sq (struct mlx5_core_dev*,int *,int,int *) ;
 int uid ;

int mlx5_core_create_sq_tracked(struct mlx5_core_dev *dev, u32 *in, int inlen,
    struct mlx5_core_qp *sq)
{
 int err;
 u32 sqn;

 err = mlx5_core_create_sq(dev, in, inlen, &sqn);
 if (err)
  return err;

 sq->uid = MLX5_GET(create_sq_in, in, uid);
 sq->qpn = sqn;
 err = create_resource_common(dev, sq, MLX5_RES_SQ);
 if (err)
  goto err_destroy_sq;

 return 0;

err_destroy_sq:
 destroy_sq_tracked(dev, sq->qpn, sq->uid);

 return err;
}
