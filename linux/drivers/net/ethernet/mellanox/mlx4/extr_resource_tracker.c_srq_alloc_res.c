
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;

 int RES_SRQ ;
 int __mlx4_srq_alloc_icm (struct mlx4_dev*,int*) ;
 int __mlx4_srq_free_icm (struct mlx4_dev*,int) ;
 int add_res_range (struct mlx4_dev*,int,int,int,int ,int ) ;
 int mlx4_grant_resource (struct mlx4_dev*,int,int ,int,int ) ;
 int mlx4_release_resource (struct mlx4_dev*,int,int ,int,int ) ;
 int set_param_l (int *,int) ;

__attribute__((used)) static int srq_alloc_res(struct mlx4_dev *dev, int slave, int op, int cmd,
    u64 in_param, u64 *out_param)
{
 int srqn;
 int err;

 switch (op) {
 case 128:
  err = mlx4_grant_resource(dev, slave, RES_SRQ, 1, 0);
  if (err)
   break;

  err = __mlx4_srq_alloc_icm(dev, &srqn);
  if (err) {
   mlx4_release_resource(dev, slave, RES_SRQ, 1, 0);
   break;
  }

  err = add_res_range(dev, slave, srqn, 1, RES_SRQ, 0);
  if (err) {
   mlx4_release_resource(dev, slave, RES_SRQ, 1, 0);
   __mlx4_srq_free_icm(dev, srqn);
   break;
  }

  set_param_l(out_param, srqn);
  break;

 default:
  err = -EINVAL;
 }

 return err;
}
