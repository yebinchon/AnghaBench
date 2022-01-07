
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ice_vsi {TYPE_2__* back; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct ethtool_fecparam {int fec; } ;
typedef enum ice_fec_mode { ____Placeholder_ice_fec_mode } ice_fec_mode ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;





 int ICE_FEC_AUTO ;
 int ICE_FEC_BASER ;
 int ICE_FEC_NONE ;
 int ICE_FEC_RS ;
 int dev_warn (int *,char*,int) ;
 int ice_set_fec_cfg (struct net_device*,int) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ice_set_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;
 enum ice_fec_mode fec;

 switch (fecparam->fec) {
 case 132:
  fec = ICE_FEC_AUTO;
  break;
 case 128:
  fec = ICE_FEC_RS;
  break;
 case 131:
  fec = ICE_FEC_BASER;
  break;
 case 129:
 case 130:
  fec = ICE_FEC_NONE;
  break;
 default:
  dev_warn(&vsi->back->pdev->dev, "Unsupported FEC mode: %d\n",
    fecparam->fec);
  return -EINVAL;
 }

 return ice_set_fec_cfg(netdev, fec);
}
