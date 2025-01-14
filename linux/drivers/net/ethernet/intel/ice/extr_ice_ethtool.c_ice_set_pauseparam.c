
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ice_vsi {scalar_t__ type; struct ice_port_info* port_info; struct ice_pf* back; } ;
struct TYPE_7__ {int req_mode; } ;
struct TYPE_6__ {scalar_t__ pfcena; } ;
struct ice_dcbx_cfg {TYPE_2__ pfc; } ;
struct ice_link_status {int link_info; int an_info; } ;
struct TYPE_5__ {struct ice_link_status link_info; } ;
struct ice_port_info {TYPE_3__ fc; struct ice_dcbx_cfg local_dcbx_cfg; TYPE_1__ phy; } ;
struct TYPE_8__ {int sq_last_status; } ;
struct ice_hw {TYPE_4__ adminq; } ;
struct ice_pf {int state; struct ice_hw hw; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct ice_aqc_get_phy_caps_data {int caps; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int ICE_AQC_PHY_AN_MODE ;
 int ICE_AQC_REPORT_SW_CFG ;
 int ICE_AQ_AN_COMPLETED ;
 int ICE_AQ_LINK_UP ;
 int ICE_FC_FULL ;
 int ICE_FC_NONE ;
 int ICE_FC_RX_PAUSE ;
 int ICE_FC_TX_PAUSE ;
 int ICE_SET_FC_AQ_FAIL_GET ;
 int ICE_SET_FC_AQ_FAIL_SET ;
 int ICE_SET_FC_AQ_FAIL_UPDATE ;
 scalar_t__ ICE_VSI_PF ;
 int __ICE_DOWN ;
 int ice_aq_get_phy_caps (struct ice_port_info*,int,int ,struct ice_aqc_get_phy_caps_data*,int *) ;
 int ice_down (struct ice_vsi*) ;
 int ice_nway_reset (struct net_device*) ;
 int ice_print_link_msg (struct ice_vsi*,int) ;
 int ice_set_fc (struct ice_port_info*,int*,int) ;
 int ice_up (struct ice_vsi*) ;
 int kfree (struct ice_aqc_get_phy_caps_data*) ;
 struct ice_aqc_get_phy_caps_data* kzalloc (int,int ) ;
 int msleep (int) ;
 int netdev_info (struct net_device*,char*,...) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int
ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_aqc_get_phy_caps_data *pcaps;
 struct ice_link_status *hw_link_info;
 struct ice_pf *pf = np->vsi->back;
 struct ice_dcbx_cfg *dcbx_cfg;
 struct ice_vsi *vsi = np->vsi;
 struct ice_hw *hw = &pf->hw;
 struct ice_port_info *pi;
 enum ice_status status;
 u8 aq_failures;
 bool link_up;
 int err = 0;
 u32 is_an;

 pi = vsi->port_info;
 hw_link_info = &pi->phy.link_info;
 dcbx_cfg = &pi->local_dcbx_cfg;
 link_up = hw_link_info->link_info & ICE_AQ_LINK_UP;




 if (vsi->type != ICE_VSI_PF) {
  netdev_info(netdev, "Changing flow control parameters only supported for PF VSI\n");
  return -EOPNOTSUPP;
 }







 pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 if (!pcaps)
  return -ENOMEM;


 status = ice_aq_get_phy_caps(pi, 0, ICE_AQC_REPORT_SW_CFG, pcaps,
         ((void*)0));
 if (status) {
  kfree(pcaps);
  return -EIO;
 }

 is_an = ((pcaps->caps & ICE_AQC_PHY_AN_MODE) ?
   AUTONEG_ENABLE : AUTONEG_DISABLE);

 kfree(pcaps);

 if (pause->autoneg != is_an) {
  netdev_info(netdev, "To change autoneg please use: ethtool -s <dev> autoneg <on|off>\n");
  return -EOPNOTSUPP;
 }


 if (!test_bit(__ICE_DOWN, pf->state) &&
     !(hw_link_info->an_info & ICE_AQ_AN_COMPLETED)) {

  netdev_info(netdev, "Autoneg did not complete so changing settings may not result in an actual change.\n");
 }

 if (dcbx_cfg->pfc.pfcena) {
  netdev_info(netdev, "Priority flow control enabled. Cannot set link flow control.\n");
  return -EOPNOTSUPP;
 }
 if (pause->rx_pause && pause->tx_pause)
  pi->fc.req_mode = ICE_FC_FULL;
 else if (pause->rx_pause && !pause->tx_pause)
  pi->fc.req_mode = ICE_FC_RX_PAUSE;
 else if (!pause->rx_pause && pause->tx_pause)
  pi->fc.req_mode = ICE_FC_TX_PAUSE;
 else if (!pause->rx_pause && !pause->tx_pause)
  pi->fc.req_mode = ICE_FC_NONE;
 else
  return -EINVAL;




 ice_print_link_msg(vsi, 0);
 netif_carrier_off(netdev);
 netif_tx_stop_all_queues(netdev);


 status = ice_set_fc(pi, &aq_failures, link_up);

 if (aq_failures & ICE_SET_FC_AQ_FAIL_GET) {
  netdev_info(netdev, "Set fc failed on the get_phy_capabilities call with err %d aq_err %d\n",
       status, hw->adminq.sq_last_status);
  err = -EAGAIN;
 } else if (aq_failures & ICE_SET_FC_AQ_FAIL_SET) {
  netdev_info(netdev, "Set fc failed on the set_phy_config call with err %d aq_err %d\n",
       status, hw->adminq.sq_last_status);
  err = -EAGAIN;
 } else if (aq_failures & ICE_SET_FC_AQ_FAIL_UPDATE) {
  netdev_info(netdev, "Set fc failed on the get_link_info call with err %d aq_err %d\n",
       status, hw->adminq.sq_last_status);
  err = -EAGAIN;
 }

 if (!test_bit(__ICE_DOWN, pf->state)) {



  msleep(75);
  if (!test_bit(__ICE_DOWN, pf->state))
   return ice_nway_reset(netdev);

  ice_down(vsi);
  ice_up(vsi);
 }

 return err;
}
