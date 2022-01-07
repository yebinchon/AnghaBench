
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nfp_cpp {int dummy; } ;
struct nfp_abm {int * thresholds; int q_lvls; int threshold_undef; TYPE_1__* app; } ;
struct TYPE_2__ {struct nfp_cpp* cpp; } ;


 unsigned int NFP_QLVL_STRIDE ;
 scalar_t__ NFP_QLVL_THRS ;
 int __clear_bit (unsigned int,int ) ;
 int __nfp_rtsym_writel (struct nfp_cpp*,int ,int,int ,scalar_t__,int ) ;
 int nfp_err (struct nfp_cpp*,char*,unsigned int) ;

int __nfp_abm_ctrl_set_q_lvl(struct nfp_abm *abm, unsigned int id, u32 val)
{
 struct nfp_cpp *cpp = abm->app->cpp;
 u64 sym_offset;
 int err;

 __clear_bit(id, abm->threshold_undef);
 if (abm->thresholds[id] == val)
  return 0;

 sym_offset = id * NFP_QLVL_STRIDE + NFP_QLVL_THRS;
 err = __nfp_rtsym_writel(cpp, abm->q_lvls, 4, 0, sym_offset, val);
 if (err) {
  nfp_err(cpp,
   "RED offload setting level failed on subqueue %d\n",
   id);
  return err;
 }

 abm->thresholds[id] = val;
 return 0;
}
