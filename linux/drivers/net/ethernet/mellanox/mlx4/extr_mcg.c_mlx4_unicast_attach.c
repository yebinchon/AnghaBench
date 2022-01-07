
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx4_qp {int dummy; } ;
struct mlx4_dev {int dummy; } ;
typedef enum mlx4_protocol { ____Placeholder_mlx4_protocol } mlx4_protocol ;


 int MLX4_PROT_ETH ;
 int MLX4_UC_STEER ;
 int mlx4_QP_ATTACH (struct mlx4_dev*,struct mlx4_qp*,int*,int,int,int) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int mlx4_qp_attach_common (struct mlx4_dev*,struct mlx4_qp*,int*,int,int,int) ;

int mlx4_unicast_attach(struct mlx4_dev *dev,
   struct mlx4_qp *qp, u8 gid[16],
   int block_mcast_loopback, enum mlx4_protocol prot)
{
 if (prot == MLX4_PROT_ETH)
  gid[7] |= (MLX4_UC_STEER << 1);

 if (mlx4_is_mfunc(dev))
  return mlx4_QP_ATTACH(dev, qp, gid, 1,
     block_mcast_loopback, prot);

 return mlx4_qp_attach_common(dev, qp, gid, block_mcast_loopback,
     prot, MLX4_UC_STEER);
}
