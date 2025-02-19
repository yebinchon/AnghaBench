
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tc_red_qopt_offload {int xstats; int handle; } ;
struct TYPE_4__ {TYPE_1__* band; } ;
struct nfp_qdisc {TYPE_2__ red; int offloaded; } ;
struct nfp_abm_link {int dummy; } ;
struct TYPE_3__ {int xstats; int prev_xstats; } ;


 int EOPNOTSUPP ;
 struct nfp_qdisc* nfp_abm_qdisc_find (struct nfp_abm_link*,int ) ;
 int nfp_abm_stats_red_calculate (int *,int *,int ) ;
 int nfp_abm_stats_update (struct nfp_abm_link*) ;

__attribute__((used)) static int
nfp_abm_red_xstats(struct nfp_abm_link *alink, struct tc_red_qopt_offload *opt)
{
 struct nfp_qdisc *qdisc;

 nfp_abm_stats_update(alink);

 qdisc = nfp_abm_qdisc_find(alink, opt->handle);
 if (!qdisc || !qdisc->offloaded)
  return -EOPNOTSUPP;

 nfp_abm_stats_red_calculate(&qdisc->red.band[0].xstats,
        &qdisc->red.band[0].prev_xstats,
        opt->xstats);
 qdisc->red.band[0].prev_xstats = qdisc->red.band[0].xstats;
 return 0;
}
