
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 unsigned int DPAA_BPS_NUM ;
 unsigned int DPAA_STATS_GLOBAL_LEN ;
 unsigned int DPAA_STATS_PERCPU_LEN ;
 int EOPNOTSUPP ;

 int num_online_cpus () ;

__attribute__((used)) static int dpaa_get_sset_count(struct net_device *net_dev, int type)
{
 unsigned int total_stats, num_stats;

 num_stats = num_online_cpus() + 1;
 total_stats = num_stats * (DPAA_STATS_PERCPU_LEN + DPAA_BPS_NUM) +
   DPAA_STATS_GLOBAL_LEN;

 switch (type) {
 case 128:
  return total_stats;
 default:
  return -EOPNOTSUPP;
 }
}
