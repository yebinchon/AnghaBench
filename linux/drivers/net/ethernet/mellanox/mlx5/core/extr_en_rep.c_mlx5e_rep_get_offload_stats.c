
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;

 int mlx5e_get_sw_stats64 (struct net_device const*,void*) ;

__attribute__((used)) static int mlx5e_rep_get_offload_stats(int attr_id, const struct net_device *dev,
           void *sp)
{
 switch (attr_id) {
 case 128:
  return mlx5e_get_sw_stats64(dev, sp);
 }

 return -EINVAL;
}
