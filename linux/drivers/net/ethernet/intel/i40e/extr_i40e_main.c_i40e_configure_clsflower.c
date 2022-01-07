
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {struct i40e_pf* back; int netdev; } ;
struct i40e_pf {int flags; int num_cloud_filters; int cloud_filter_list; int hw; TYPE_1__* pdev; int fdir_filter_list; scalar_t__ fdir_pf_active_filters; int state; } ;
struct i40e_cloud_filter {int cloud_node; scalar_t__ dst_port; int cookie; } ;
struct flow_cls_offload {int cookie; int classid; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int I40E_FLAG_FD_SB_ENABLED ;
 int I40E_FLAG_FD_SB_TO_CLOUD_FILTER ;
 int INIT_HLIST_NODE (int *) ;
 int __I40E_RESET_INTR_RECEIVED ;
 int __I40E_RESET_RECOVERY_PENDING ;
 int dev_err (int *,char*,...) ;
 int hlist_add_head (int *,int *) ;
 int hlist_empty (int *) ;
 int i40e_add_del_cloud_filter (struct i40e_vsi*,struct i40e_cloud_filter*,int) ;
 int i40e_add_del_cloud_filter_big_buf (struct i40e_vsi*,struct i40e_cloud_filter*,int) ;
 int i40e_handle_tclass (struct i40e_vsi*,int,struct i40e_cloud_filter*) ;
 int i40e_parse_cls_flower (struct i40e_vsi*,struct flow_cls_offload*,struct i40e_cloud_filter*) ;
 int i40e_stat_str (int *,int) ;
 int kfree (struct i40e_cloud_filter*) ;
 struct i40e_cloud_filter* kzalloc (int,int ) ;
 int tc_classid_to_hwtc (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int i40e_configure_clsflower(struct i40e_vsi *vsi,
        struct flow_cls_offload *cls_flower)
{
 int tc = tc_classid_to_hwtc(vsi->netdev, cls_flower->classid);
 struct i40e_cloud_filter *filter = ((void*)0);
 struct i40e_pf *pf = vsi->back;
 int err = 0;

 if (tc < 0) {
  dev_err(&vsi->back->pdev->dev, "Invalid traffic class\n");
  return -EOPNOTSUPP;
 }

 if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
     test_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
  return -EBUSY;

 if (pf->fdir_pf_active_filters ||
     (!hlist_empty(&pf->fdir_filter_list))) {
  dev_err(&vsi->back->pdev->dev,
   "Flow Director Sideband filters exists, turn ntuple off to configure cloud filters\n");
  return -EINVAL;
 }

 if (vsi->back->flags & I40E_FLAG_FD_SB_ENABLED) {
  dev_err(&vsi->back->pdev->dev,
   "Disable Flow Director Sideband, configuring Cloud filters via tc-flower\n");
  vsi->back->flags &= ~I40E_FLAG_FD_SB_ENABLED;
  vsi->back->flags |= I40E_FLAG_FD_SB_TO_CLOUD_FILTER;
 }

 filter = kzalloc(sizeof(*filter), GFP_KERNEL);
 if (!filter)
  return -ENOMEM;

 filter->cookie = cls_flower->cookie;

 err = i40e_parse_cls_flower(vsi, cls_flower, filter);
 if (err < 0)
  goto err;

 err = i40e_handle_tclass(vsi, tc, filter);
 if (err < 0)
  goto err;


 if (filter->dst_port)
  err = i40e_add_del_cloud_filter_big_buf(vsi, filter, 1);
 else
  err = i40e_add_del_cloud_filter(vsi, filter, 1);

 if (err) {
  dev_err(&pf->pdev->dev,
   "Failed to add cloud filter, err %s\n",
   i40e_stat_str(&pf->hw, err));
  goto err;
 }


 INIT_HLIST_NODE(&filter->cloud_node);

 hlist_add_head(&filter->cloud_node, &pf->cloud_filter_list);

 pf->num_cloud_filters++;

 return err;
err:
 kfree(filter);
 return err;
}
