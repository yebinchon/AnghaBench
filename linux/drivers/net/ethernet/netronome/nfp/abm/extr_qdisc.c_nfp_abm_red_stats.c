
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tc_qopt_offload_stats {int qstats; int bstats; } ;
struct TYPE_4__ {TYPE_1__* band; } ;
struct nfp_qdisc {scalar_t__ offloaded; TYPE_2__ red; } ;
struct nfp_abm_link {int dummy; } ;
struct TYPE_3__ {int stats; int prev_stats; } ;


 int EOPNOTSUPP ;
 struct nfp_qdisc* nfp_abm_qdisc_find (struct nfp_abm_link*,int ) ;
 int nfp_abm_stats_calculate (int *,int *,int ,int ) ;
 int nfp_abm_stats_update (struct nfp_abm_link*) ;

__attribute__((used)) static int
nfp_abm_red_stats(struct nfp_abm_link *alink, u32 handle,
    struct tc_qopt_offload_stats *stats)
{
 struct nfp_qdisc *qdisc;

 nfp_abm_stats_update(alink);

 qdisc = nfp_abm_qdisc_find(alink, handle);
 if (!qdisc)
  return -EOPNOTSUPP;




 nfp_abm_stats_calculate(&qdisc->red.band[0].stats,
    &qdisc->red.band[0].prev_stats,
    stats->bstats, stats->qstats);
 qdisc->red.band[0].prev_stats = qdisc->red.band[0].stats;

 return qdisc->offloaded ? 0 : -EOPNOTSUPP;
}
