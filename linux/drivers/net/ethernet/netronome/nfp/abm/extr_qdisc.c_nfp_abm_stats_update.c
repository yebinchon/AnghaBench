
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nfp_abm_link {scalar_t__ last_stats_update; } ;


 scalar_t__ NFP_ABM_STATS_REFRESH_IVAL ;
 int __nfp_abm_stats_update (struct nfp_abm_link*,scalar_t__) ;
 scalar_t__ ktime_get () ;

__attribute__((used)) static void nfp_abm_stats_update(struct nfp_abm_link *alink)
{
 u64 now;





 now = ktime_get();
 if (now - alink->last_stats_update < NFP_ABM_STATS_REFRESH_IVAL)
  return;

 __nfp_abm_stats_update(alink, now);
}
