
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sja1105_private {int* rgmii_rx_delay; int* rgmii_tx_delay; TYPE_1__* info; } ;
struct sja1105_dt_port {scalar_t__ role; scalar_t__ phy_mode; } ;
struct TYPE_2__ {int setup_rgmii_delay; } ;


 int EINVAL ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ;
 int SJA1105_NUM_PORTS ;
 scalar_t__ XMII_MAC ;

__attribute__((used)) static int sja1105_parse_rgmii_delays(struct sja1105_private *priv,
          const struct sja1105_dt_port *ports)
{
 int i;

 for (i = 0; i < SJA1105_NUM_PORTS; i++) {
  if (ports->role == XMII_MAC)
   continue;

  if (ports->phy_mode == PHY_INTERFACE_MODE_RGMII_RXID ||
      ports->phy_mode == PHY_INTERFACE_MODE_RGMII_ID)
   priv->rgmii_rx_delay[i] = 1;

  if (ports->phy_mode == PHY_INTERFACE_MODE_RGMII_TXID ||
      ports->phy_mode == PHY_INTERFACE_MODE_RGMII_ID)
   priv->rgmii_tx_delay[i] = 1;

  if ((priv->rgmii_rx_delay[i] || priv->rgmii_tx_delay[i]) &&
       !priv->info->setup_rgmii_delay)
   return -EINVAL;
 }
 return 0;
}
