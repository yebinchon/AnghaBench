
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* describe_stats ) (struct efx_nic*,int *) ;} ;


 int EFX_ETHTOOL_SW_STAT_COUNT ;
 int EINVAL ;


 int efx_describe_per_queue_stats (struct efx_nic*,int *) ;
 int efx_ethtool_fill_self_tests (struct efx_nic*,int *,int *,int *) ;
 int efx_ptp_describe_stats (struct efx_nic*,int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,int *) ;

__attribute__((used)) static int efx_ethtool_get_sset_count(struct net_device *net_dev,
          int string_set)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 switch (string_set) {
 case 129:
  return efx->type->describe_stats(efx, ((void*)0)) +
         EFX_ETHTOOL_SW_STAT_COUNT +
         efx_describe_per_queue_stats(efx, ((void*)0)) +
         efx_ptp_describe_stats(efx, ((void*)0));
 case 128:
  return efx_ethtool_fill_self_tests(efx, ((void*)0), ((void*)0), ((void*)0));
 default:
  return -EINVAL;
 }
}
