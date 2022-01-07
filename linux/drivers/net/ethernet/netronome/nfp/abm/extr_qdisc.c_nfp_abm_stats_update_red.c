
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int num_bands; TYPE_1__* band; } ;
struct nfp_qdisc {TYPE_2__ red; int offloaded; } ;
struct nfp_cpp {int dummy; } ;
struct nfp_abm_link {TYPE_4__* abm; } ;
struct TYPE_8__ {TYPE_3__* app; } ;
struct TYPE_7__ {struct nfp_cpp* cpp; } ;
struct TYPE_5__ {int xstats; int stats; } ;


 int nfp_abm_ctrl_read_q_stats (struct nfp_abm_link*,unsigned int,unsigned int,int *) ;
 int nfp_abm_ctrl_read_q_xstats (struct nfp_abm_link*,unsigned int,unsigned int,int *) ;
 int nfp_err (struct nfp_cpp*,char*,unsigned int,unsigned int,int) ;

__attribute__((used)) static void
nfp_abm_stats_update_red(struct nfp_abm_link *alink, struct nfp_qdisc *qdisc,
    unsigned int queue)
{
 struct nfp_cpp *cpp = alink->abm->app->cpp;
 unsigned int i;
 int err;

 if (!qdisc->offloaded)
  return;

 for (i = 0; i < qdisc->red.num_bands; i++) {
  err = nfp_abm_ctrl_read_q_stats(alink, i, queue,
      &qdisc->red.band[i].stats);
  if (err)
   nfp_err(cpp, "RED stats (%d, %d) read failed with error %d\n",
    i, queue, err);

  err = nfp_abm_ctrl_read_q_xstats(alink, i, queue,
       &qdisc->red.band[i].xstats);
  if (err)
   nfp_err(cpp, "RED xstats (%d, %d) read failed with error %d\n",
    i, queue, err);
 }
}
