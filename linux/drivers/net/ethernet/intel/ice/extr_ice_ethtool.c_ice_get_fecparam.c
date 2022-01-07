
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ice_vsi {TYPE_3__* back; struct ice_port_info* port_info; } ;
struct ice_link_status {int fec_info; } ;
struct TYPE_4__ {struct ice_link_status link_info; } ;
struct ice_port_info {TYPE_1__ phy; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct ice_aqc_get_phy_caps_data {int caps; int link_fec_options; } ;
struct ethtool_fecparam {int fec; int active_fec; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int EAGAIN ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETHTOOL_FEC_AUTO ;
 int ETHTOOL_FEC_BASER ;
 int ETHTOOL_FEC_OFF ;
 int ETHTOOL_FEC_RS ;
 int GFP_KERNEL ;
 int ICE_AQC_PHY_EN_AUTO_FEC ;
 int ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN ;
 int ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ ;
 int ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN ;
 int ICE_AQC_PHY_FEC_25G_KR_REQ ;
 int ICE_AQC_PHY_FEC_25G_RS_528_REQ ;
 int ICE_AQC_PHY_FEC_25G_RS_544_REQ ;
 int ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN ;
 int ICE_AQC_REPORT_TOPO_CAP ;



 int devm_kfree (int *,struct ice_aqc_get_phy_caps_data*) ;
 struct ice_aqc_get_phy_caps_data* devm_kzalloc (int *,int,int ) ;
 int ice_aq_get_phy_caps (struct ice_port_info*,int,int ,struct ice_aqc_get_phy_caps_data*,int *) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_aqc_get_phy_caps_data *caps;
 struct ice_link_status *link_info;
 struct ice_vsi *vsi = np->vsi;
 struct ice_port_info *pi;
 enum ice_status status;
 int err = 0;

 pi = vsi->port_info;

 if (!pi)
  return -EOPNOTSUPP;
 link_info = &pi->phy.link_info;


 switch (link_info->fec_info) {
 case 130:
  fecparam->active_fec = ETHTOOL_FEC_BASER;
  break;
 case 129:

 case 128:
  fecparam->active_fec = ETHTOOL_FEC_RS;
  break;
 default:
  fecparam->active_fec = ETHTOOL_FEC_OFF;
  break;
 }

 caps = devm_kzalloc(&vsi->back->pdev->dev, sizeof(*caps), GFP_KERNEL);
 if (!caps)
  return -ENOMEM;

 status = ice_aq_get_phy_caps(pi, 0, ICE_AQC_REPORT_TOPO_CAP,
         caps, ((void*)0));
 if (status) {
  err = -EAGAIN;
  goto done;
 }


 if (caps->caps & ICE_AQC_PHY_EN_AUTO_FEC)
  fecparam->fec |= ETHTOOL_FEC_AUTO;
 if (caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN ||
     caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ ||
     caps->link_fec_options & ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN ||
     caps->link_fec_options & ICE_AQC_PHY_FEC_25G_KR_REQ)
  fecparam->fec |= ETHTOOL_FEC_BASER;
 if (caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_528_REQ ||
     caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_544_REQ ||
     caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN)
  fecparam->fec |= ETHTOOL_FEC_RS;
 if (caps->link_fec_options == 0)
  fecparam->fec |= ETHTOOL_FEC_OFF;

done:
 devm_kfree(&vsi->back->pdev->dev, caps);
 return err;
}
