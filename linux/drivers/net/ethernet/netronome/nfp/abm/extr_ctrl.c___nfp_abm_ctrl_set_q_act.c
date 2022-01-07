
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct nfp_cpp {int dummy; } ;
struct nfp_abm {int* actions; int q_lvls; TYPE_1__* app; } ;
typedef enum nfp_abm_q_action { ____Placeholder_nfp_abm_q_action } nfp_abm_q_action ;
struct TYPE_2__ {struct nfp_cpp* cpp; } ;


 scalar_t__ NFP_QLVL_ACT ;
 unsigned int NFP_QLVL_STRIDE ;
 int __nfp_rtsym_writel (struct nfp_cpp*,int ,int,int ,scalar_t__,int) ;
 int nfp_err (struct nfp_cpp*,char*,unsigned int) ;

int __nfp_abm_ctrl_set_q_act(struct nfp_abm *abm, unsigned int id,
        enum nfp_abm_q_action act)
{
 struct nfp_cpp *cpp = abm->app->cpp;
 u64 sym_offset;
 int err;

 if (abm->actions[id] == act)
  return 0;

 sym_offset = id * NFP_QLVL_STRIDE + NFP_QLVL_ACT;
 err = __nfp_rtsym_writel(cpp, abm->q_lvls, 4, 0, sym_offset, act);
 if (err) {
  nfp_err(cpp,
   "RED offload setting action failed on subqueue %d\n",
   id);
  return err;
 }

 abm->actions[id] = act;
 return 0;
}
