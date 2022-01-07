
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ice_vsi {int current_isup; int netdev; TYPE_5__* back; TYPE_6__* port_info; } ;
struct ice_aqc_get_phy_caps_data {int link_fec_options; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_8__ {int link_speed; int fec_info; int an_info; } ;
struct TYPE_9__ {TYPE_2__ link_info; } ;
struct TYPE_7__ {int current_mode; } ;
struct TYPE_12__ {TYPE_3__ phy; TYPE_1__ fc; } ;
struct TYPE_11__ {TYPE_4__* pdev; } ;
struct TYPE_10__ {int dev; } ;


 int GFP_KERNEL ;
 int ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ ;
 int ICE_AQC_PHY_FEC_25G_KR_REQ ;
 int ICE_AQC_PHY_FEC_25G_RS_528_REQ ;
 int ICE_AQC_PHY_FEC_25G_RS_544_REQ ;
 int ICE_AQC_REPORT_SW_CFG ;
 int ICE_AQ_AN_COMPLETED ;
 int devm_kfree (int *,struct ice_aqc_get_phy_caps_data*) ;
 struct ice_aqc_get_phy_caps_data* devm_kzalloc (int *,int,int ) ;
 int ice_aq_get_phy_caps (TYPE_6__*,int,int ,struct ice_aqc_get_phy_caps_data*,int *) ;
 int ice_print_topo_conflict (struct ice_vsi*) ;
 int netdev_info (int ,char*,...) ;

void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
{
 struct ice_aqc_get_phy_caps_data *caps;
 enum ice_status status;
 const char *fec_req;
 const char *speed;
 const char *fec;
 const char *fc;
 const char *an;

 if (!vsi)
  return;

 if (vsi->current_isup == isup)
  return;

 vsi->current_isup = isup;

 if (!isup) {
  netdev_info(vsi->netdev, "NIC Link is Down\n");
  return;
 }

 switch (vsi->port_info->phy.link_info.link_speed) {
 case 140:
  speed = "100 G";
  break;
 case 133:
  speed = "50 G";
  break;
 case 134:
  speed = "40 G";
  break;
 case 135:
  speed = "25 G";
  break;
 case 137:
  speed = "20 G";
  break;
 case 138:
  speed = "10 G";
  break;
 case 132:
  speed = "5 G";
  break;
 case 136:
  speed = "2.5 G";
  break;
 case 141:
  speed = "1 G";
  break;
 case 139:
  speed = "100 M";
  break;
 default:
  speed = "Unknown";
  break;
 }

 switch (vsi->port_info->fc.current_mode) {
 case 131:
  fc = "Rx/Tx";
  break;
 case 128:
  fc = "Tx";
  break;
 case 129:
  fc = "Rx";
  break;
 case 130:
  fc = "None";
  break;
 default:
  fc = "Unknown";
  break;
 }


 switch (vsi->port_info->phy.link_info.fec_info) {
 case 143:

 case 142:
  fec = "RS-FEC";
  break;
 case 144:
  fec = "FC-FEC/BASE-R";
  break;
 default:
  fec = "NONE";
  break;
 }


 if (vsi->port_info->phy.link_info.an_info & ICE_AQ_AN_COMPLETED)
  an = "True";
 else
  an = "False";


 caps = devm_kzalloc(&vsi->back->pdev->dev, sizeof(*caps), GFP_KERNEL);
 if (!caps) {
  fec_req = "Unknown";
  goto done;
 }

 status = ice_aq_get_phy_caps(vsi->port_info, 0,
         ICE_AQC_REPORT_SW_CFG, caps, ((void*)0));
 if (status)
  netdev_info(vsi->netdev, "Get phy capability failed.\n");

 if (caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_528_REQ ||
     caps->link_fec_options & ICE_AQC_PHY_FEC_25G_RS_544_REQ)
  fec_req = "RS-FEC";
 else if (caps->link_fec_options & ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ ||
   caps->link_fec_options & ICE_AQC_PHY_FEC_25G_KR_REQ)
  fec_req = "FC-FEC/BASE-R";
 else
  fec_req = "NONE";

 devm_kfree(&vsi->back->pdev->dev, caps);

done:
 netdev_info(vsi->netdev, "NIC Link is up %sbps, Requested FEC: %s, FEC: %s, Autoneg: %s, Flow Control: %s\n",
      speed, fec_req, fec, an, fc);
 ice_print_topo_conflict(vsi);
}
