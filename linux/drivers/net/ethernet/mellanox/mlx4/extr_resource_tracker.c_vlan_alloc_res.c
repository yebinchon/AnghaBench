
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct mlx4_slave_state {int old_vlan_api; } ;
struct TYPE_4__ {struct mlx4_slave_state* slave_state; } ;
struct TYPE_5__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct TYPE_6__ {int num_ports; } ;
struct mlx4_dev {TYPE_3__ caps; } ;


 int EINVAL ;
 int RES_OP_RESERVE_AND_MAP ;
 int __mlx4_register_vlan (struct mlx4_dev*,int,scalar_t__,int*) ;
 int __mlx4_unregister_vlan (struct mlx4_dev*,int,scalar_t__) ;
 int get_param_l (scalar_t__*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_slave_convert_port (struct mlx4_dev*,int,int) ;
 int set_param_l (scalar_t__*,int ) ;
 int vlan_add_to_slave (struct mlx4_dev*,int,scalar_t__,int,int) ;

__attribute__((used)) static int vlan_alloc_res(struct mlx4_dev *dev, int slave, int op, int cmd,
     u64 in_param, u64 *out_param, int in_port)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_slave_state *slave_state = priv->mfunc.master.slave_state;
 int err;
 u16 vlan;
 int vlan_index;
 int port;

 port = !in_port ? get_param_l(out_param) : in_port;

 if (!port || op != RES_OP_RESERVE_AND_MAP)
  return -EINVAL;

 port = mlx4_slave_convert_port(
   dev, slave, port);

 if (port < 0)
  return -EINVAL;

 if (!in_port && port > 0 && port <= dev->caps.num_ports) {
  slave_state[slave].old_vlan_api = 1;
  return 0;
 }

 vlan = (u16) in_param;

 err = __mlx4_register_vlan(dev, port, vlan, &vlan_index);
 if (!err) {
  set_param_l(out_param, (u32) vlan_index);
  err = vlan_add_to_slave(dev, slave, vlan, port, vlan_index);
  if (err)
   __mlx4_unregister_vlan(dev, port, vlan);
 }
 return err;
}
