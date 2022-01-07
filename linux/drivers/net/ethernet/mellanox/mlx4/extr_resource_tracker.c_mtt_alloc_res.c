
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int RES_MTT ;
 int RES_OP_RESERVE_AND_MAP ;
 int __mlx4_alloc_mtt_range (struct mlx4_dev*,int) ;
 int __mlx4_free_mtt_range (struct mlx4_dev*,int,int) ;
 int add_res_range (struct mlx4_dev*,int,int,int,int ,int) ;
 int get_param_l (int *) ;
 int mlx4_grant_resource (struct mlx4_dev*,int,int ,int,int ) ;
 int mlx4_release_resource (struct mlx4_dev*,int,int ,int,int ) ;
 int set_param_l (int *,int) ;

__attribute__((used)) static int mtt_alloc_res(struct mlx4_dev *dev, int slave, int op, int cmd,
    u64 in_param, u64 *out_param)
{
 int err = -EINVAL;
 int base;
 int order;

 if (op != RES_OP_RESERVE_AND_MAP)
  return err;

 order = get_param_l(&in_param);

 err = mlx4_grant_resource(dev, slave, RES_MTT, 1 << order, 0);
 if (err)
  return err;

 base = __mlx4_alloc_mtt_range(dev, order);
 if (base == -1) {
  mlx4_release_resource(dev, slave, RES_MTT, 1 << order, 0);
  return -ENOMEM;
 }

 err = add_res_range(dev, slave, base, 1, RES_MTT, order);
 if (err) {
  mlx4_release_resource(dev, slave, RES_MTT, 1 << order, 0);
  __mlx4_free_mtt_range(dev, base, order);
 } else {
  set_param_l(out_param, base);
 }

 return err;
}
