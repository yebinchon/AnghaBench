
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ef4_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* describe_stats ) (struct ef4_nic*,int *) ;} ;


 int EF4_ETHTOOL_SW_STAT_COUNT ;
 int EINVAL ;


 int ef4_describe_per_queue_stats (struct ef4_nic*,int *) ;
 int ef4_ethtool_fill_self_tests (struct ef4_nic*,int *,int *,int *) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct ef4_nic*,int *) ;

__attribute__((used)) static int ef4_ethtool_get_sset_count(struct net_device *net_dev,
          int string_set)
{
 struct ef4_nic *efx = netdev_priv(net_dev);

 switch (string_set) {
 case 129:
  return efx->type->describe_stats(efx, ((void*)0)) +
         EF4_ETHTOOL_SW_STAT_COUNT +
         ef4_describe_per_queue_stats(efx, ((void*)0));
 case 128:
  return ef4_ethtool_fill_self_tests(efx, ((void*)0), ((void*)0), ((void*)0));
 default:
  return -EINVAL;
 }
}
