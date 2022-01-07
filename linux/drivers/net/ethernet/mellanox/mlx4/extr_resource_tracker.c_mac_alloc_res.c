
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int RES_OP_RESERVE_AND_MAP ;
 int __mlx4_register_mac (struct mlx4_dev*,int,int ) ;
 int __mlx4_unregister_mac (struct mlx4_dev*,int,int ) ;
 int get_param_l (int *) ;
 int mac_add_to_slave (struct mlx4_dev*,int,int ,int,int) ;
 int mlx4_slave_convert_port (struct mlx4_dev*,int,int) ;
 int set_param_l (int *,int) ;

__attribute__((used)) static int mac_alloc_res(struct mlx4_dev *dev, int slave, int op, int cmd,
    u64 in_param, u64 *out_param, int in_port)
{
 int err = -EINVAL;
 int port;
 u64 mac;
 u8 smac_index;

 if (op != RES_OP_RESERVE_AND_MAP)
  return err;

 port = !in_port ? get_param_l(out_param) : in_port;
 port = mlx4_slave_convert_port(
   dev, slave, port);

 if (port < 0)
  return -EINVAL;
 mac = in_param;

 err = __mlx4_register_mac(dev, port, mac);
 if (err >= 0) {
  smac_index = err;
  set_param_l(out_param, err);
  err = 0;
 }

 if (!err) {
  err = mac_add_to_slave(dev, slave, mac, port, smac_index);
  if (err)
   __mlx4_unregister_mac(dev, port, mac);
 }
 return err;
}
