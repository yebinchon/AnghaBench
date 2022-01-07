
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int num_bands; TYPE_2__* band; } ;
struct nfp_qdisc {TYPE_1__ red; } ;
struct nfp_abm_link {int dummy; } ;
struct TYPE_4__ {int prev_xstats; int prev_stats; } ;


 int __nfp_abm_stats_init (struct nfp_abm_link*,unsigned int,unsigned int,int *,int *) ;

__attribute__((used)) static int
nfp_abm_stats_init(struct nfp_abm_link *alink, struct nfp_qdisc *qdisc,
     unsigned int queue)
{
 unsigned int i;
 int err;

 for (i = 0; i < qdisc->red.num_bands; i++) {
  err = __nfp_abm_stats_init(alink, i, queue,
        &qdisc->red.band[i].prev_stats,
        &qdisc->red.band[i].prev_xstats);
  if (err)
   return err;
 }

 return 0;
}
