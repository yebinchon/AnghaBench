
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_qp {int uid; int qpn; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_GET (int ,int *,int ) ;
 int MLX5_RES_RQ ;
 int create_resource_common (struct mlx5_core_dev*,struct mlx5_core_qp*,int ) ;
 int create_rq_in ;
 int destroy_rq_tracked (struct mlx5_core_dev*,int ,int ) ;
 int mlx5_core_create_rq (struct mlx5_core_dev*,int *,int,int *) ;
 int uid ;

int mlx5_core_create_rq_tracked(struct mlx5_core_dev *dev, u32 *in, int inlen,
    struct mlx5_core_qp *rq)
{
 int err;
 u32 rqn;

 err = mlx5_core_create_rq(dev, in, inlen, &rqn);
 if (err)
  return err;

 rq->uid = MLX5_GET(create_rq_in, in, uid);
 rq->qpn = rqn;
 err = create_resource_common(dev, rq, MLX5_RES_RQ);
 if (err)
  goto err_destroy_rq;

 return 0;

err_destroy_rq:
 destroy_rq_tracked(dev, rq->qpn, rq->uid);

 return err;
}
