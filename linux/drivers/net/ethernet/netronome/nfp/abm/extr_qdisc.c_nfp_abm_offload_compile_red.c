
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* band; } ;
struct nfp_qdisc {scalar_t__ type; int use_cnt; int offload_mark; TYPE_3__ red; int offloaded; scalar_t__ params_ok; int * children; } ;
struct nfp_abm_link {TYPE_1__* abm; int has_prio; } ;
typedef enum nfp_abm_q_action { ____Placeholder_nfp_abm_q_action } nfp_abm_q_action ;
struct TYPE_5__ {scalar_t__ ecn; int threshold; } ;
struct TYPE_4__ {unsigned int num_bands; } ;


 int NFP_ABM_ACT_DROP ;
 int NFP_ABM_ACT_MARK_DROP ;
 scalar_t__ NFP_QDISC_GRED ;
 scalar_t__ NFP_QDISC_RED ;
 int nfp_abm_ctrl_set_q_act (struct nfp_abm_link*,unsigned int,unsigned int,int) ;
 int nfp_abm_ctrl_set_q_lvl (struct nfp_abm_link*,unsigned int,unsigned int,int ) ;
 scalar_t__ nfp_abm_stats_init (struct nfp_abm_link*,struct nfp_qdisc*,unsigned int) ;

__attribute__((used)) static void
nfp_abm_offload_compile_red(struct nfp_abm_link *alink, struct nfp_qdisc *qdisc,
       unsigned int queue)
{
 bool good_red, good_gred;
 unsigned int i;

 good_red = qdisc->type == NFP_QDISC_RED &&
     qdisc->params_ok &&
     qdisc->use_cnt == 1 &&
     !alink->has_prio &&
     !qdisc->children[0];
 good_gred = qdisc->type == NFP_QDISC_GRED &&
      qdisc->params_ok &&
      qdisc->use_cnt == 1;
 qdisc->offload_mark = good_red || good_gred;


 if (qdisc->offload_mark && !qdisc->offloaded)
  if (nfp_abm_stats_init(alink, qdisc, queue))
   qdisc->offload_mark = 0;

 if (!qdisc->offload_mark)
  return;

 for (i = 0; i < alink->abm->num_bands; i++) {
  enum nfp_abm_q_action act;

  nfp_abm_ctrl_set_q_lvl(alink, i, queue,
           qdisc->red.band[i].threshold);
  act = qdisc->red.band[i].ecn ?
   NFP_ABM_ACT_MARK_DROP : NFP_ABM_ACT_DROP;
  nfp_abm_ctrl_set_q_act(alink, i, queue, act);
 }
}
