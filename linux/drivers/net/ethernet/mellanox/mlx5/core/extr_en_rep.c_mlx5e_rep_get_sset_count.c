
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

 int NUM_VPORT_REP_HW_COUNTERS ;
 int NUM_VPORT_REP_SW_COUNTERS ;

__attribute__((used)) static int mlx5e_rep_get_sset_count(struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return NUM_VPORT_REP_SW_COUNTERS + NUM_VPORT_REP_HW_COUNTERS;
 default:
  return -EOPNOTSUPP;
 }
}
