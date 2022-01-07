
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource_allocator {int res_reserved; } ;
struct TYPE_2__ {int num_ports; int max_counters; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_active_ports {int ports; } ;


 int MLX4_PF_COUNTERS_PER_PORT ;
 int MLX4_VF_COUNTERS_PER_PORT ;
 int bitmap_weight (int ,int) ;
 struct mlx4_active_ports mlx4_get_active_ports (struct mlx4_dev*,int) ;
 int mlx4_master_func_num (struct mlx4_dev*) ;

__attribute__((used)) static int
mlx4_calc_res_counter_guaranteed(struct mlx4_dev *dev,
     struct resource_allocator *res_alloc,
     int vf)
{
 struct mlx4_active_ports actv_ports;
 int ports, counters_guaranteed;


 if (vf == mlx4_master_func_num(dev))
  return MLX4_PF_COUNTERS_PER_PORT * dev->caps.num_ports;


 actv_ports = mlx4_get_active_ports(dev, vf);
 ports = bitmap_weight(actv_ports.ports, dev->caps.num_ports);
 counters_guaranteed = ports * MLX4_VF_COUNTERS_PER_PORT;




 if ((res_alloc->res_reserved + counters_guaranteed) >
     (dev->caps.max_counters - 1))
  return 0;

 return counters_guaranteed;
}
