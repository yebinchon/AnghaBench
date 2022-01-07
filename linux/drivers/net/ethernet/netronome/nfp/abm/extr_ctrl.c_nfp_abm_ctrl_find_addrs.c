
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_rtsym {int dummy; } ;
struct nfp_pf {int cpp; } ;
struct nfp_abm {int red_support; int num_bands; int num_prios; int action_mask; struct nfp_rtsym const* q_stats; struct nfp_rtsym const* qm_stats; struct nfp_rtsym const* q_lvls; int dscp_mask; int prio_map_len; int pf_id; TYPE_1__* app; } ;
struct TYPE_2__ {struct nfp_pf* pf; } ;


 int BIT (int ) ;
 int EINVAL ;
 int GENMASK (int,scalar_t__) ;
 scalar_t__ IS_ERR (struct nfp_rtsym const*) ;
 int NFP_ABM_ACT_MARK_DROP ;
 int NFP_ACT_MASK_SYM_NAME ;
 int NFP_NUM_BANDS_SYM_NAME ;
 int NFP_NUM_PRIOS_SYM_NAME ;
 int NFP_QLVL_STRIDE ;
 int NFP_QLVL_SYM_NAME ;
 int NFP_QMSTAT_STRIDE ;
 int NFP_QMSTAT_SYM_NAME ;
 int NFP_Q_STAT_STRIDE ;
 int NFP_Q_STAT_SYM_NAME ;
 int NFP_RED_SUPPORT_SYM_NAME ;
 int PTR_ERR (struct nfp_rtsym const*) ;
 int U16_MAX ;
 int is_power_of_2 (int) ;
 struct nfp_rtsym* nfp_abm_ctrl_find_q_rtsym (struct nfp_abm*,int ,int ) ;
 int nfp_abm_ctrl_prio_map_size (struct nfp_abm*) ;
 scalar_t__ nfp_abm_has_prio (struct nfp_abm*) ;
 int nfp_cppcore_pcie_unit (int ) ;
 int nfp_err (int ,char*,int,int) ;
 int nfp_pf_rtsym_read_optional (struct nfp_pf*,int ,int) ;
 scalar_t__ order_base_2 (int) ;

int nfp_abm_ctrl_find_addrs(struct nfp_abm *abm)
{
 struct nfp_pf *pf = abm->app->pf;
 const struct nfp_rtsym *sym;
 int res;

 abm->pf_id = nfp_cppcore_pcie_unit(pf->cpp);


 res = nfp_pf_rtsym_read_optional(pf, NFP_RED_SUPPORT_SYM_NAME, 1);
 if (res < 0)
  return res;
 abm->red_support = res;


 res = nfp_pf_rtsym_read_optional(pf, NFP_NUM_BANDS_SYM_NAME, 1);
 if (res < 0)
  return res;
 abm->num_bands = res;

 res = nfp_pf_rtsym_read_optional(pf, NFP_NUM_PRIOS_SYM_NAME, 1);
 if (res < 0)
  return res;
 abm->num_prios = res;


 res = nfp_pf_rtsym_read_optional(pf, NFP_ACT_MASK_SYM_NAME,
      BIT(NFP_ABM_ACT_MARK_DROP));
 if (res < 0)
  return res;
 abm->action_mask = res;

 abm->prio_map_len = nfp_abm_ctrl_prio_map_size(abm);
 abm->dscp_mask = GENMASK(7, 8 - order_base_2(abm->num_prios));


 if (!is_power_of_2(abm->num_bands) || !is_power_of_2(abm->num_prios) ||
     abm->num_bands > U16_MAX || abm->num_prios > U16_MAX ||
     (abm->num_bands == 1) != (abm->num_prios == 1)) {
  nfp_err(pf->cpp,
   "invalid priomap description num bands: %u and num prios: %u\n",
   abm->num_bands, abm->num_prios);
  return -EINVAL;
 }


 if (!abm->red_support)
  return 0;

 sym = nfp_abm_ctrl_find_q_rtsym(abm, NFP_QLVL_SYM_NAME,
     NFP_QLVL_STRIDE);
 if (IS_ERR(sym))
  return PTR_ERR(sym);
 abm->q_lvls = sym;

 sym = nfp_abm_ctrl_find_q_rtsym(abm, NFP_QMSTAT_SYM_NAME,
     NFP_QMSTAT_STRIDE);
 if (IS_ERR(sym))
  return PTR_ERR(sym);
 abm->qm_stats = sym;

 if (nfp_abm_has_prio(abm)) {
  sym = nfp_abm_ctrl_find_q_rtsym(abm, NFP_Q_STAT_SYM_NAME,
      NFP_Q_STAT_STRIDE);
  if (IS_ERR(sym))
   return PTR_ERR(sym);
  abm->q_stats = sym;
 }

 return 0;
}
