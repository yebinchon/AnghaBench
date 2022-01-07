
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;


 int RES_QP ;
 int RES_QP_RESERVED ;
 int __mlx4_qp_free_icm (struct mlx4_dev*,int) ;
 int __mlx4_qp_release_range (struct mlx4_dev*,int,int) ;
 int fw_reserved (struct mlx4_dev*,int) ;
 int get_param_h (int *) ;
 int get_param_l (int *) ;
 int mlx4_release_resource (struct mlx4_dev*,int,int ,int,int ) ;
 int qp_res_start_move_to (struct mlx4_dev*,int,int,int ,int *,int ) ;
 int rem_res_range (struct mlx4_dev*,int,int,int,int ,int ) ;
 int res_end_move (struct mlx4_dev*,int,int ,int) ;
 int valid_reserved (struct mlx4_dev*,int,int) ;

__attribute__((used)) static int qp_free_res(struct mlx4_dev *dev, int slave, int op, int cmd,
         u64 in_param)
{
 int err;
 int count;
 int base;
 int qpn;

 switch (op) {
 case 128:
  base = get_param_l(&in_param) & 0x7fffff;
  count = get_param_h(&in_param);
  err = rem_res_range(dev, slave, base, count, RES_QP, 0);
  if (err)
   break;
  mlx4_release_resource(dev, slave, RES_QP, count, 0);
  __mlx4_qp_release_range(dev, base, count);
  break;
 case 129:
  qpn = get_param_l(&in_param) & 0x7fffff;
  err = qp_res_start_move_to(dev, slave, qpn, RES_QP_RESERVED,
        ((void*)0), 0);
  if (err)
   return err;

  if (!fw_reserved(dev, qpn))
   __mlx4_qp_free_icm(dev, qpn);

  res_end_move(dev, slave, RES_QP, qpn);

  if (valid_reserved(dev, slave, qpn))
   err = rem_res_range(dev, slave, qpn, 1, RES_QP, 0);
  break;
 default:
  err = -EINVAL;
  break;
 }
 return err;
}
