
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int speed; scalar_t__ duplex; scalar_t__ link; } ;
struct cpsw_slave {int mac_control; int mac_sl; struct phy_device* phy; int slave_num; } ;
struct cpsw_priv {scalar_t__ shp_cfg_speed; int dev; scalar_t__ tx_pause; scalar_t__ rx_pause; struct cpsw_common* cpsw; } ;
struct cpsw_common {int ale; } ;


 int ALE_PORT_STATE ;
 int ALE_PORT_STATE_DISABLE ;
 int ALE_PORT_STATE_FORWARD ;
 int CPSW_SL_CTL_EXT_EN ;
 int CPSW_SL_CTL_FULLDUPLEX ;
 int CPSW_SL_CTL_GIG ;
 int CPSW_SL_CTL_GMII_EN ;
 int CPSW_SL_CTL_IFCTL_A ;
 int CPSW_SL_CTL_RX_FLOW_EN ;
 int CPSW_SL_CTL_TX_FLOW_EN ;
 int cpsw_ale_control_set (int ,int ,int ,int ) ;
 int cpsw_get_slave_port (int ) ;
 int cpsw_shp_is_off (struct cpsw_priv*) ;
 int cpsw_sl_ctl_reset (int ) ;
 int cpsw_sl_ctl_set (int ,int ) ;
 int cpsw_sl_wait_for_idle (int ,int) ;
 int dev_warn (int ,char*) ;
 scalar_t__ phy_interface_is_rgmii (struct phy_device*) ;
 int phy_print_status (struct phy_device*) ;

__attribute__((used)) static void _cpsw_adjust_link(struct cpsw_slave *slave,
         struct cpsw_priv *priv, bool *link)
{
 struct phy_device *phy = slave->phy;
 u32 mac_control = 0;
 u32 slave_port;
 struct cpsw_common *cpsw = priv->cpsw;

 if (!phy)
  return;

 slave_port = cpsw_get_slave_port(slave->slave_num);

 if (phy->link) {
  mac_control = CPSW_SL_CTL_GMII_EN;

  if (phy->speed == 1000)
   mac_control |= CPSW_SL_CTL_GIG;
  if (phy->duplex)
   mac_control |= CPSW_SL_CTL_FULLDUPLEX;


  if (phy->speed == 100)
   mac_control |= CPSW_SL_CTL_IFCTL_A;

  else if ((phy->speed == 10) && phy_interface_is_rgmii(phy))
   mac_control |= CPSW_SL_CTL_EXT_EN;

  if (priv->rx_pause)
   mac_control |= CPSW_SL_CTL_RX_FLOW_EN;

  if (priv->tx_pause)
   mac_control |= CPSW_SL_CTL_TX_FLOW_EN;

  if (mac_control != slave->mac_control)
   cpsw_sl_ctl_set(slave->mac_sl, mac_control);


  cpsw_ale_control_set(cpsw->ale, slave_port,
         ALE_PORT_STATE, ALE_PORT_STATE_FORWARD);

  *link = 1;

  if (priv->shp_cfg_speed &&
      priv->shp_cfg_speed != slave->phy->speed &&
      !cpsw_shp_is_off(priv))
   dev_warn(priv->dev,
     "Speed was changed, CBS shaper speeds are changed!");
 } else {
  mac_control = 0;

  cpsw_ale_control_set(cpsw->ale, slave_port,
         ALE_PORT_STATE, ALE_PORT_STATE_DISABLE);

  cpsw_sl_wait_for_idle(slave->mac_sl, 100);

  cpsw_sl_ctl_reset(slave->mac_sl);
 }

 if (mac_control != slave->mac_control)
  phy_print_status(phy);

 slave->mac_control = mac_control;
}
