
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;




__attribute__((used)) static bool mlx5e_rep_has_offload_stats(const struct net_device *dev, int attr_id)
{
 switch (attr_id) {
 case 128:
   return 1;
 }

 return 0;
}
