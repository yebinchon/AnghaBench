
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

 int MLXSW_SX_PORT_HW_STATS_LEN ;

__attribute__((used)) static int mlxsw_sx_port_get_sset_count(struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return MLXSW_SX_PORT_HW_STATS_LEN;
 default:
  return -EOPNOTSUPP;
 }
}
