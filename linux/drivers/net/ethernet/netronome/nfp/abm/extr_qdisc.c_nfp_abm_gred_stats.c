
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tc_gred_qopt_offload_stats {int * xstats; int * qstats; int * bstats; } ;
struct TYPE_4__ {unsigned int num_bands; TYPE_1__* band; } ;
struct nfp_qdisc {scalar_t__ offloaded; TYPE_2__ red; } ;
struct nfp_abm_link {int dummy; } ;
struct TYPE_3__ {int xstats; int prev_xstats; int stats; int prev_stats; } ;


 int EOPNOTSUPP ;
 struct nfp_qdisc* nfp_abm_qdisc_find (struct nfp_abm_link*,int ) ;
 int nfp_abm_stats_calculate (int *,int *,int *,int *) ;
 int nfp_abm_stats_red_calculate (int *,int *,int ) ;
 int nfp_abm_stats_update (struct nfp_abm_link*) ;

__attribute__((used)) static int
nfp_abm_gred_stats(struct nfp_abm_link *alink, u32 handle,
     struct tc_gred_qopt_offload_stats *stats)
{
 struct nfp_qdisc *qdisc;
 unsigned int i;

 nfp_abm_stats_update(alink);

 qdisc = nfp_abm_qdisc_find(alink, handle);
 if (!qdisc)
  return -EOPNOTSUPP;




 for (i = 0; i < qdisc->red.num_bands; i++) {
  if (!stats->xstats[i])
   continue;

  nfp_abm_stats_calculate(&qdisc->red.band[i].stats,
     &qdisc->red.band[i].prev_stats,
     &stats->bstats[i], &stats->qstats[i]);
  qdisc->red.band[i].prev_stats = qdisc->red.band[i].stats;

  nfp_abm_stats_red_calculate(&qdisc->red.band[i].xstats,
         &qdisc->red.band[i].prev_xstats,
         stats->xstats[i]);
  qdisc->red.band[i].prev_xstats = qdisc->red.band[i].xstats;
 }

 return qdisc->offloaded ? 0 : -EOPNOTSUPP;
}
