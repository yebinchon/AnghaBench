
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_slaves_pport {int slaves; } ;
struct TYPE_3__ {int num_ports; } ;
struct mlx4_dev {TYPE_2__* persist; TYPE_1__ caps; } ;
struct mlx4_active_ports {int ports; } ;
struct TYPE_4__ {int num_vfs; } ;


 int MLX4_MFUNC_MAX ;
 int bitmap_zero (int ,int ) ;
 struct mlx4_active_ports mlx4_get_active_ports (struct mlx4_dev*,unsigned int) ;
 int set_bit (unsigned int,int ) ;
 scalar_t__ test_bit (int,int ) ;

struct mlx4_slaves_pport mlx4_phys_to_slaves_pport(struct mlx4_dev *dev,
         int port)
{
 unsigned i;
 struct mlx4_slaves_pport slaves_pport;

 bitmap_zero(slaves_pport.slaves, MLX4_MFUNC_MAX);

 if (port <= 0 || port > dev->caps.num_ports)
  return slaves_pport;

 for (i = 0; i < dev->persist->num_vfs + 1; i++) {
  struct mlx4_active_ports actv_ports =
   mlx4_get_active_ports(dev, i);
  if (test_bit(port - 1, actv_ports.ports))
   set_bit(i, slaves_pport.slaves);
 }

 return slaves_pport;
}
