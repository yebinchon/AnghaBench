
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct i40e_vf {int trusted; scalar_t__ adq_enabled; } ;
struct i40e_pf {int num_alloc_vfs; int flags; int state; TYPE_2__* pdev; struct i40e_vf* vf; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct i40e_pf* back; } ;


 int EAGAIN ;
 int EINVAL ;
 int I40E_FLAG_MFP_ENABLED ;
 int __I40E_VIRTCHNL_OP_PENDING ;
 int clear_bit (int ,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,...) ;
 int dev_warn (int *,char*) ;
 int i40e_del_all_cloud_filters (struct i40e_vf*) ;
 int i40e_vc_disable_vf (struct i40e_vf*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int ) ;

int i40e_ndo_set_vf_trust(struct net_device *netdev, int vf_id, bool setting)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;
 struct i40e_vf *vf;
 int ret = 0;

 if (test_and_set_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
  dev_warn(&pf->pdev->dev, "Unable to configure VFs, other operation is pending.\n");
  return -EAGAIN;
 }


 if (vf_id >= pf->num_alloc_vfs) {
  dev_err(&pf->pdev->dev, "Invalid VF Identifier %d\n", vf_id);
  ret = -EINVAL;
  goto out;
 }

 if (pf->flags & I40E_FLAG_MFP_ENABLED) {
  dev_err(&pf->pdev->dev, "Trusted VF not supported in MFP mode.\n");
  ret = -EINVAL;
  goto out;
 }

 vf = &pf->vf[vf_id];

 if (setting == vf->trusted)
  goto out;

 vf->trusted = setting;
 i40e_vc_disable_vf(vf);
 dev_info(&pf->pdev->dev, "VF %u is now %strusted\n",
   vf_id, setting ? "" : "un");

 if (vf->adq_enabled) {
  if (!vf->trusted) {
   dev_info(&pf->pdev->dev,
     "VF %u no longer Trusted, deleting all cloud filters\n",
     vf_id);
   i40e_del_all_cloud_filters(vf);
  }
 }

out:
 clear_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state);
 return ret;
}
