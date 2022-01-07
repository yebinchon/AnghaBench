
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_slaves_pport {int slaves; } ;
struct TYPE_3__ {scalar_t__ num_ports; } ;
struct mlx4_dev {TYPE_2__* persist; TYPE_1__ caps; } ;
struct mlx4_active_ports {int ports; } ;
struct TYPE_4__ {scalar_t__ num_vfs; } ;


 int MLX4_ROCE_MAX_GIDS ;
 int MLX4_ROCE_PF_GIDS ;
 int bitmap_weight (int ,scalar_t__) ;
 int bitmap_zero (int ,scalar_t__) ;
 int find_first_bit (int ,scalar_t__) ;
 struct mlx4_active_ports mlx4_get_active_ports (struct mlx4_dev*,int) ;
 struct mlx4_slaves_pport mlx4_phys_to_slaves_pport (struct mlx4_dev*,int) ;
 struct mlx4_slaves_pport mlx4_phys_to_slaves_pport_actv (struct mlx4_dev*,struct mlx4_active_ports*) ;
 int set_bit (unsigned int,int ) ;

int mlx4_get_slave_num_gids(struct mlx4_dev *dev, int slave, int port)
{
 int vfs;
 int slave_gid = slave;
 unsigned i;
 struct mlx4_slaves_pport slaves_pport;
 struct mlx4_active_ports actv_ports;
 unsigned max_port_p_one;

 if (slave == 0)
  return MLX4_ROCE_PF_GIDS;


 slaves_pport = mlx4_phys_to_slaves_pport(dev, port);
 actv_ports = mlx4_get_active_ports(dev, slave);
 max_port_p_one = find_first_bit(actv_ports.ports, dev->caps.num_ports) +
  bitmap_weight(actv_ports.ports, dev->caps.num_ports) + 1;

 for (i = 1; i < max_port_p_one; i++) {
  struct mlx4_active_ports exclusive_ports;
  struct mlx4_slaves_pport slaves_pport_actv;
  bitmap_zero(exclusive_ports.ports, dev->caps.num_ports);
  set_bit(i - 1, exclusive_ports.ports);
  if (i == port)
   continue;
  slaves_pport_actv = mlx4_phys_to_slaves_pport_actv(
        dev, &exclusive_ports);
  slave_gid -= bitmap_weight(slaves_pport_actv.slaves,
        dev->persist->num_vfs + 1);
 }
 vfs = bitmap_weight(slaves_pport.slaves, dev->persist->num_vfs + 1) - 1;
 if (slave_gid <= ((MLX4_ROCE_MAX_GIDS - MLX4_ROCE_PF_GIDS) % vfs))
  return ((MLX4_ROCE_MAX_GIDS - MLX4_ROCE_PF_GIDS) / vfs) + 1;
 return (MLX4_ROCE_MAX_GIDS - MLX4_ROCE_PF_GIDS) / vfs;
}
