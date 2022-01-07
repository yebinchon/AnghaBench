
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct tc_qopt_offload_stats {int qstats; int bstats; } ;
struct TYPE_6__ {int prev_stats; int stats; } ;
struct TYPE_5__ {unsigned int num_bands; TYPE_1__* band; } ;
struct nfp_qdisc {unsigned int num_children; scalar_t__ offloaded; TYPE_3__ mq; TYPE_2__ red; struct nfp_qdisc** children; } ;
struct nfp_abm_link {int dummy; } ;
struct TYPE_4__ {int prev_stats; int stats; } ;


 int EOPNOTSUPP ;
 int memset (int *,int ,int) ;
 int nfp_abm_qdisc_child_valid (struct nfp_qdisc*,unsigned int) ;
 struct nfp_qdisc* nfp_abm_qdisc_find (struct nfp_abm_link*,int ) ;
 int nfp_abm_qdisc_is_red (struct nfp_qdisc*) ;
 int nfp_abm_stats_calculate (int *,int *,int ,int ) ;
 int nfp_abm_stats_propagate (int *,int *) ;
 int nfp_abm_stats_update (struct nfp_abm_link*) ;

__attribute__((used)) static int
nfp_abm_mq_stats(struct nfp_abm_link *alink, u32 handle,
   struct tc_qopt_offload_stats *stats)
{
 struct nfp_qdisc *qdisc, *red;
 unsigned int i, j;

 qdisc = nfp_abm_qdisc_find(alink, handle);
 if (!qdisc)
  return -EOPNOTSUPP;

 nfp_abm_stats_update(alink);




 memset(&qdisc->mq.stats, 0, sizeof(qdisc->mq.stats));
 memset(&qdisc->mq.prev_stats, 0, sizeof(qdisc->mq.prev_stats));

 for (i = 0; i < qdisc->num_children; i++) {
  if (!nfp_abm_qdisc_child_valid(qdisc, i))
   continue;

  if (!nfp_abm_qdisc_is_red(qdisc->children[i]))
   continue;
  red = qdisc->children[i];

  for (j = 0; j < red->red.num_bands; j++) {
   nfp_abm_stats_propagate(&qdisc->mq.stats,
      &red->red.band[j].stats);
   nfp_abm_stats_propagate(&qdisc->mq.prev_stats,
      &red->red.band[j].prev_stats);
  }
 }

 nfp_abm_stats_calculate(&qdisc->mq.stats, &qdisc->mq.prev_stats,
    stats->bstats, stats->qstats);

 return qdisc->offloaded ? 0 : -EOPNOTSUPP;
}
