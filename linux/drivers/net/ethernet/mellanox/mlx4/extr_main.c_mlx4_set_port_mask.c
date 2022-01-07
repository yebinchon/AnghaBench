
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ports; int * port_type; int * port_mask; } ;
struct mlx4_dev {TYPE_1__ caps; } ;



__attribute__((used)) static void mlx4_set_port_mask(struct mlx4_dev *dev)
{
 int i;

 for (i = 1; i <= dev->caps.num_ports; ++i)
  dev->caps.port_mask[i] = dev->caps.port_type[i];
}
