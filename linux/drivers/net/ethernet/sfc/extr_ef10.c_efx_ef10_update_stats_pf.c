
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rtnl_link_stats64 {int dummy; } ;
struct efx_nic {int dummy; } ;


 scalar_t__ efx_ef10_try_update_nic_stats_pf (struct efx_nic*) ;
 size_t efx_ef10_update_stats_common (struct efx_nic*,int *,struct rtnl_link_stats64*) ;
 int udelay (int) ;

__attribute__((used)) static size_t efx_ef10_update_stats_pf(struct efx_nic *efx, u64 *full_stats,
           struct rtnl_link_stats64 *core_stats)
{
 int retry;




 for (retry = 0; retry < 100; ++retry) {
  if (efx_ef10_try_update_nic_stats_pf(efx) == 0)
   break;
  udelay(100);
 }

 return efx_ef10_update_stats_common(efx, full_stats, core_stats);
}
