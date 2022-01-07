
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;

 int mlxsw_sp_port_get_sw_stats64 (struct net_device const*,void*) ;

__attribute__((used)) static int mlxsw_sp_port_get_offload_stats(int attr_id, const struct net_device *dev,
        void *sp)
{
 switch (attr_id) {
 case 128:
  return mlxsw_sp_port_get_sw_stats64(dev, sp);
 }

 return -EINVAL;
}
