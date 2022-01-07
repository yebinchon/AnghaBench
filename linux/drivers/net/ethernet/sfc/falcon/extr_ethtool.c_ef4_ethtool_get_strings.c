
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ef4_nic {TYPE_1__* type; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int (* describe_stats ) (struct ef4_nic*,int *) ;} ;


 int EF4_ETHTOOL_SW_STAT_COUNT ;
 int ETH_GSTRING_LEN ;


 int ef4_describe_per_queue_stats (struct ef4_nic*,int *) ;
 int ef4_ethtool_fill_self_tests (struct ef4_nic*,int *,int *,int *) ;
 TYPE_2__* ef4_sw_stat_desc ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int strlcpy (int *,int ,int) ;
 int stub1 (struct ef4_nic*,int *) ;

__attribute__((used)) static void ef4_ethtool_get_strings(struct net_device *net_dev,
        u32 string_set, u8 *strings)
{
 struct ef4_nic *efx = netdev_priv(net_dev);
 int i;

 switch (string_set) {
 case 129:
  strings += (efx->type->describe_stats(efx, strings) *
       ETH_GSTRING_LEN);
  for (i = 0; i < EF4_ETHTOOL_SW_STAT_COUNT; i++)
   strlcpy(strings + i * ETH_GSTRING_LEN,
    ef4_sw_stat_desc[i].name, ETH_GSTRING_LEN);
  strings += EF4_ETHTOOL_SW_STAT_COUNT * ETH_GSTRING_LEN;
  strings += (ef4_describe_per_queue_stats(efx, strings) *
       ETH_GSTRING_LEN);
  break;
 case 128:
  ef4_ethtool_fill_self_tests(efx, ((void*)0), strings, ((void*)0));
  break;
 default:

  break;
 }
}
