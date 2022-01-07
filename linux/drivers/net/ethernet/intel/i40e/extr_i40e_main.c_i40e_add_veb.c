
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct i40e_vsi {int flags; int veb_idx; int uplink_seid; int seid; } ;
struct i40e_veb {int idx; int seid; int stats_idx; int enabled_tc; int uplink_seid; struct i40e_pf* pf; } ;
struct TYPE_9__ {int asq_last_status; } ;
struct TYPE_10__ {TYPE_2__ aq; } ;
struct i40e_pf {int flags; TYPE_3__ hw; TYPE_1__* pdev; } ;
struct TYPE_8__ {int dev; } ;


 int ENOENT ;
 int EPERM ;
 int I40E_FLAG_VEB_STATS_ENABLED ;
 int I40E_VSI_FLAG_VEB_OWNER ;
 int dev_info (int *,char*,int ,int ) ;
 int i40e_aq_add_veb (TYPE_3__*,int ,int ,int ,int,int *,int,int *) ;
 int i40e_aq_delete_element (TYPE_3__*,int ,int *) ;
 int i40e_aq_get_veb_parameters (TYPE_3__*,int ,int *,int *,int *,int *,int *,int *) ;
 int i40e_aq_str (TYPE_3__*,int ) ;
 int i40e_stat_str (TYPE_3__*,int) ;
 int i40e_veb_get_bw_info (struct i40e_veb*) ;

__attribute__((used)) static int i40e_add_veb(struct i40e_veb *veb, struct i40e_vsi *vsi)
{
 struct i40e_pf *pf = veb->pf;
 bool enable_stats = !!(pf->flags & I40E_FLAG_VEB_STATS_ENABLED);
 int ret;

 ret = i40e_aq_add_veb(&pf->hw, veb->uplink_seid, vsi->seid,
         veb->enabled_tc, 0,
         &veb->seid, enable_stats, ((void*)0));


 if (ret) {
  dev_info(&pf->pdev->dev,
    "couldn't add VEB, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, ret),
    i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
  return -EPERM;
 }


 ret = i40e_aq_get_veb_parameters(&pf->hw, veb->seid, ((void*)0), ((void*)0),
      &veb->stats_idx, ((void*)0), ((void*)0), ((void*)0));
 if (ret) {
  dev_info(&pf->pdev->dev,
    "couldn't get VEB statistics idx, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, ret),
    i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
  return -EPERM;
 }
 ret = i40e_veb_get_bw_info(veb);
 if (ret) {
  dev_info(&pf->pdev->dev,
    "couldn't get VEB bw info, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, ret),
    i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
  i40e_aq_delete_element(&pf->hw, veb->seid, ((void*)0));
  return -ENOENT;
 }

 vsi->uplink_seid = veb->seid;
 vsi->veb_idx = veb->idx;
 vsi->flags |= I40E_VSI_FLAG_VEB_OWNER;

 return 0;
}
