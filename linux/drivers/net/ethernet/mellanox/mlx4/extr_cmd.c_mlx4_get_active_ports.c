
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_ports; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__* dev_vfs; } ;
struct mlx4_active_ports {int ports; } ;
struct TYPE_3__ {scalar_t__ n_ports; scalar_t__ min_port; } ;


 int MLX4_MAX_PORTS ;
 int bitmap_fill (int ,int ) ;
 int bitmap_set (int ,scalar_t__,int ) ;
 int bitmap_zero (int ,int ) ;
 int min (int,int ) ;
 size_t mlx4_get_vf_indx (struct mlx4_dev*,int) ;

struct mlx4_active_ports mlx4_get_active_ports(struct mlx4_dev *dev, int slave)
{
 struct mlx4_active_ports actv_ports;
 int vf;

 bitmap_zero(actv_ports.ports, MLX4_MAX_PORTS);

 if (slave == 0) {
  bitmap_fill(actv_ports.ports, dev->caps.num_ports);
  return actv_ports;
 }

 vf = mlx4_get_vf_indx(dev, slave);
 if (vf < 0)
  return actv_ports;

 bitmap_set(actv_ports.ports, dev->dev_vfs[vf].min_port - 1,
     min((int)dev->dev_vfs[mlx4_get_vf_indx(dev, slave)].n_ports,
     dev->caps.num_ports));

 return actv_ports;
}
