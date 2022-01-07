
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfp_abm_link {scalar_t__ root_qdisc; int last_stats_update; } ;


 int nfp_abm_stats_update_mq (struct nfp_abm_link*,scalar_t__) ;

__attribute__((used)) static void __nfp_abm_stats_update(struct nfp_abm_link *alink, u64 time_now)
{
 alink->last_stats_update = time_now;
 if (alink->root_qdisc)
  nfp_abm_stats_update_mq(alink, alink->root_qdisc);
}
