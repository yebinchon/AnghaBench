
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int (* describe_stats ) (struct efx_nic*,int *) ;} ;


 int EFX_ETHTOOL_SW_STAT_COUNT ;
 int ETH_GSTRING_LEN ;


 int efx_describe_per_queue_stats (struct efx_nic*,int *) ;
 int efx_ethtool_fill_self_tests (struct efx_nic*,int *,int *,int *) ;
 int efx_ptp_describe_stats (struct efx_nic*,int *) ;
 TYPE_2__* efx_sw_stat_desc ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int strlcpy (int *,int ,int) ;
 int stub1 (struct efx_nic*,int *) ;

__attribute__((used)) static void efx_ethtool_get_strings(struct net_device *net_dev,
        u32 string_set, u8 *strings)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 int i;

 switch (string_set) {
 case 129:
  strings += (efx->type->describe_stats(efx, strings) *
       ETH_GSTRING_LEN);
  for (i = 0; i < EFX_ETHTOOL_SW_STAT_COUNT; i++)
   strlcpy(strings + i * ETH_GSTRING_LEN,
    efx_sw_stat_desc[i].name, ETH_GSTRING_LEN);
  strings += EFX_ETHTOOL_SW_STAT_COUNT * ETH_GSTRING_LEN;
  strings += (efx_describe_per_queue_stats(efx, strings) *
       ETH_GSTRING_LEN);
  efx_ptp_describe_stats(efx, strings);
  break;
 case 128:
  efx_ethtool_fill_self_tests(efx, ((void*)0), strings, ((void*)0));
  break;
 default:

  break;
 }
}
