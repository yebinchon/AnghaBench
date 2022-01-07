
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_7__ {scalar_t__ default_vlan; int default_qos; } ;
struct mlx4_vport_oper_state {TYPE_3__ state; } ;
struct TYPE_5__ {TYPE_4__* vf_oper; } ;
struct TYPE_6__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_8__ {struct mlx4_vport_oper_state* vport; } ;


 scalar_t__ MLX4_VGT ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_slaves_closest_port (struct mlx4_dev*,int,int) ;

bool mlx4_get_slave_default_vlan(struct mlx4_dev *dev, int port, int slave,
     u16 *vlan, u8 *qos)
{
 struct mlx4_vport_oper_state *vp_oper;
 struct mlx4_priv *priv;

 priv = mlx4_priv(dev);
 port = mlx4_slaves_closest_port(dev, slave, port);
 vp_oper = &priv->mfunc.master.vf_oper[slave].vport[port];

 if (MLX4_VGT != vp_oper->state.default_vlan) {
  if (vlan)
   *vlan = vp_oper->state.default_vlan;
  if (qos)
   *qos = vp_oper->state.default_qos;
  return 1;
 }
 return 0;
}
