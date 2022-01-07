
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ice_vsi {TYPE_4__* back; TYPE_5__* port_info; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct ice_link_status {int link_info; int an_info; } ;
struct ice_aqc_get_phy_caps_data {int caps; int link_fec_options; } ;
struct TYPE_7__ {int port; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_6__ {int media_type; struct ice_link_status link_info; } ;
struct TYPE_10__ {TYPE_1__ phy; } ;
struct TYPE_9__ {TYPE_3__* pdev; } ;
struct TYPE_8__ {int dev; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int Asym_Pause ;
 int Autoneg ;
 int Backplane ;
 int EIO ;
 int ENOMEM ;
 int FEC_BASER ;
 int FEC_NONE ;
 int FEC_RS ;
 int FIBRE ;
 int GFP_KERNEL ;
 int ICE_AQC_PHY_EN_RX_LINK_PAUSE ;
 int ICE_AQC_PHY_EN_TX_LINK_PAUSE ;
 int ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN ;
 int ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ ;
 int ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN ;
 int ICE_AQC_PHY_FEC_25G_KR_REQ ;
 int ICE_AQC_PHY_FEC_25G_RS_528_REQ ;
 int ICE_AQC_PHY_FEC_25G_RS_544_REQ ;
 int ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN ;
 int ICE_AQC_REPORT_SW_CFG ;
 int ICE_AQC_REPORT_TOPO_CAP ;
 int ICE_AQ_AN_COMPLETED ;
 int ICE_AQ_LINK_UP ;




 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_NONE ;
 int PORT_OTHER ;
 int PORT_TP ;
 int Pause ;
 int TP ;
 int advertising ;
 int devm_kfree (int *,struct ice_aqc_get_phy_caps_data*) ;
 struct ice_aqc_get_phy_caps_data* devm_kzalloc (int *,int,int ) ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int ethtool_link_ksettings_del_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int ice_aq_get_phy_caps (TYPE_5__*,int,int ,struct ice_aqc_get_phy_caps_data*,int *) ;
 int ice_get_settings_link_down (struct ethtool_link_ksettings*,struct net_device*) ;
 int ice_get_settings_link_up (struct ethtool_link_ksettings*,struct net_device*) ;
 int lp_advertising ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int supported ;

__attribute__((used)) static int
ice_get_link_ksettings(struct net_device *netdev,
         struct ethtool_link_ksettings *ks)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_aqc_get_phy_caps_data *caps;
 struct ice_link_status *hw_link_info;
 struct ice_vsi *vsi = np->vsi;
 enum ice_status status;
 int err = 0;

 ethtool_link_ksettings_zero_link_mode(ks, supported);
 ethtool_link_ksettings_zero_link_mode(ks, advertising);
 ethtool_link_ksettings_zero_link_mode(ks, lp_advertising);
 hw_link_info = &vsi->port_info->phy.link_info;


 if (hw_link_info->link_info & ICE_AQ_LINK_UP)
  ice_get_settings_link_up(ks, netdev);
 else
  ice_get_settings_link_down(ks, netdev);


 ks->base.autoneg = (hw_link_info->an_info & ICE_AQ_AN_COMPLETED) ?
  AUTONEG_ENABLE : AUTONEG_DISABLE;


 switch (vsi->port_info->phy.media_type) {
 case 128:
  ethtool_link_ksettings_add_link_mode(ks, supported, FIBRE);
  ks->base.port = PORT_FIBRE;
  break;
 case 130:
  ethtool_link_ksettings_add_link_mode(ks, supported, TP);
  ethtool_link_ksettings_add_link_mode(ks, advertising, TP);
  ks->base.port = PORT_TP;
  break;
 case 131:
  ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
  ethtool_link_ksettings_add_link_mode(ks, supported, Backplane);
  ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
  ethtool_link_ksettings_add_link_mode(ks, advertising,
           Backplane);
  ks->base.port = PORT_NONE;
  break;
 case 129:
  ethtool_link_ksettings_add_link_mode(ks, supported, FIBRE);
  ethtool_link_ksettings_add_link_mode(ks, advertising, FIBRE);
  ks->base.port = PORT_DA;
  break;
 default:
  ks->base.port = PORT_OTHER;
  break;
 }


 ethtool_link_ksettings_add_link_mode(ks, supported, Pause);

 caps = devm_kzalloc(&vsi->back->pdev->dev, sizeof(*caps), GFP_KERNEL);
 if (!caps)
  return -ENOMEM;

 status = ice_aq_get_phy_caps(vsi->port_info, 0,
         ICE_AQC_REPORT_SW_CFG, caps, ((void*)0));
 if (status) {
  err = -EIO;
  goto done;
 }


 if ((caps->caps & ICE_AQC_PHY_EN_TX_LINK_PAUSE) &&
     (caps->caps & ICE_AQC_PHY_EN_RX_LINK_PAUSE)) {
  ethtool_link_ksettings_add_link_mode(ks, advertising, Pause);
  ethtool_link_ksettings_add_link_mode(ks, advertising,
           Asym_Pause);
 } else if (caps->caps & ICE_AQC_PHY_EN_TX_LINK_PAUSE) {
  ethtool_link_ksettings_add_link_mode(ks, advertising,
           Asym_Pause);
 } else if (caps->caps & ICE_AQC_PHY_EN_RX_LINK_PAUSE) {
  ethtool_link_ksettings_add_link_mode(ks, advertising, Pause);
  ethtool_link_ksettings_add_link_mode(ks, advertising,
           Asym_Pause);
 } else {
  ethtool_link_ksettings_del_link_mode(ks, advertising, Pause);
  ethtool_link_ksettings_del_link_mode(ks, advertising,
           Asym_Pause);
 }


 ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_NONE);

 if (caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ ||
     caps->link_fec_options & ICE_AQC_PHY_FEC_25G_KR_REQ)
  ethtool_link_ksettings_add_link_mode(ks, advertising,
           FEC_BASER);
 if (caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_528_REQ ||
     caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_544_REQ)
  ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_RS);

 status = ice_aq_get_phy_caps(vsi->port_info, 0,
         ICE_AQC_REPORT_TOPO_CAP, caps, ((void*)0));
 if (status) {
  err = -EIO;
  goto done;
 }


 ethtool_link_ksettings_add_link_mode(ks, supported, FEC_NONE);

 if (caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN ||
     caps->link_fec_options & ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN)
  ethtool_link_ksettings_add_link_mode(ks, supported, FEC_BASER);
 if (caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN)
  ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);

done:
 devm_kfree(&vsi->back->pdev->dev, caps);
 return err;
}
