
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct i40e_hw {scalar_t__ device_id; } ;
struct i40e_pf {TYPE_2__* pdev; struct i40e_hw hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct ethtool_fecparam {int fec; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct i40e_pf* back; } ;


 int EINVAL ;
 int EPERM ;





 int I40E_AQ_SET_FEC_ABILITY_KR ;
 int I40E_AQ_SET_FEC_ABILITY_RS ;
 int I40E_AQ_SET_FEC_AUTO ;
 int I40E_AQ_SET_FEC_REQUEST_KR ;
 int I40E_AQ_SET_FEC_REQUEST_RS ;
 scalar_t__ I40E_DEV_ID_25G_B ;
 scalar_t__ I40E_DEV_ID_25G_SFP28 ;
 int dev_warn (int *,char*,int) ;
 int i40e_set_fec_cfg (struct net_device*,int) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_set_fec_param(struct net_device *netdev,
         struct ethtool_fecparam *fecparam)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;
 struct i40e_hw *hw = &pf->hw;
 u8 fec_cfg = 0;
 int err = 0;

 if (hw->device_id != I40E_DEV_ID_25G_SFP28 &&
     hw->device_id != I40E_DEV_ID_25G_B) {
  err = -EPERM;
  goto done;
 }

 switch (fecparam->fec) {
 case 132:
  fec_cfg = I40E_AQ_SET_FEC_AUTO;
  break;
 case 128:
  fec_cfg = (I40E_AQ_SET_FEC_REQUEST_RS |
        I40E_AQ_SET_FEC_ABILITY_RS);
  break;
 case 131:
  fec_cfg = (I40E_AQ_SET_FEC_REQUEST_KR |
        I40E_AQ_SET_FEC_ABILITY_KR);
  break;
 case 129:
 case 130:
  fec_cfg = 0;
  break;
 default:
  dev_warn(&pf->pdev->dev, "Unsupported FEC mode: %d",
    fecparam->fec);
  err = -EINVAL;
  goto done;
 }

 err = i40e_set_fec_cfg(netdev, fec_cfg);

done:
 return err;
}
