
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ice_vsi {struct ice_pf* back; } ;
struct ice_vf {int trusted; int vf_states; } ;
struct ice_pf {int num_alloc_vfs; TYPE_1__* pdev; struct ice_vf* vf; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int EINVAL ;
 int ICE_VF_STATE_INIT ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int,char*) ;
 int ice_vc_dis_vf (struct ice_vf*) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int ) ;

int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;
 struct ice_pf *pf = vsi->back;
 struct ice_vf *vf;


 if (vf_id >= pf->num_alloc_vfs) {
  dev_err(&pf->pdev->dev, "invalid VF id: %d\n", vf_id);
  return -EINVAL;
 }

 vf = &pf->vf[vf_id];
 if (!test_bit(ICE_VF_STATE_INIT, vf->vf_states)) {
  dev_err(&pf->pdev->dev, "VF %d in reset. Try again.\n", vf_id);
  return -EBUSY;
 }


 if (trusted == vf->trusted)
  return 0;

 vf->trusted = trusted;
 ice_vc_dis_vf(vf);
 dev_info(&pf->pdev->dev, "VF %u is now %strusted\n",
   vf_id, trusted ? "" : "un");

 return 0;
}
