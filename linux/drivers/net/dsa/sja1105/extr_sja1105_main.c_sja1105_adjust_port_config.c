
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sja1105_xmii_params_entry {scalar_t__* xmii_mode; int speed; } ;
struct TYPE_6__ {TYPE_2__* tables; } ;
struct sja1105_private {TYPE_3__ static_config; TYPE_1__* ds; } ;
struct sja1105_mac_config_entry {scalar_t__* xmii_mode; int speed; } ;
struct device {int dummy; } ;
typedef int sja1105_speed_t ;
typedef scalar_t__ sja1105_phy_interface_t ;
struct TYPE_5__ {struct sja1105_xmii_params_entry* entries; } ;
struct TYPE_4__ {struct device* dev; } ;


 size_t BLK_IDX_MAC_CONFIG ;
 size_t BLK_IDX_XMII_PARAMS ;
 int EINVAL ;
 int SJA1105_SPEED_1000MBPS ;
 int SJA1105_SPEED_100MBPS ;
 int SJA1105_SPEED_10MBPS ;
 int SJA1105_SPEED_AUTO ;




 scalar_t__ XMII_MODE_RGMII ;
 int dev_err (struct device*,char*,int) ;
 int sja1105_clocking_setup_port (struct sja1105_private*,int) ;
 int sja1105_dynamic_config_write (struct sja1105_private*,size_t,int,struct sja1105_xmii_params_entry*,int) ;

__attribute__((used)) static int sja1105_adjust_port_config(struct sja1105_private *priv, int port,
          int speed_mbps)
{
 struct sja1105_xmii_params_entry *mii;
 struct sja1105_mac_config_entry *mac;
 struct device *dev = priv->ds->dev;
 sja1105_phy_interface_t phy_mode;
 sja1105_speed_t speed;
 int rc;







 mac = priv->static_config.tables[BLK_IDX_MAC_CONFIG].entries;
 mii = priv->static_config.tables[BLK_IDX_XMII_PARAMS].entries;

 switch (speed_mbps) {
 case 128:







  speed = SJA1105_SPEED_AUTO;
  break;
 case 131:
  speed = SJA1105_SPEED_10MBPS;
  break;
 case 130:
  speed = SJA1105_SPEED_100MBPS;
  break;
 case 129:
  speed = SJA1105_SPEED_1000MBPS;
  break;
 default:
  dev_err(dev, "Invalid speed %iMbps\n", speed_mbps);
  return -EINVAL;
 }






 mac[port].speed = speed;


 rc = sja1105_dynamic_config_write(priv, BLK_IDX_MAC_CONFIG, port,
       &mac[port], 1);
 if (rc < 0) {
  dev_err(dev, "Failed to write MAC config: %d\n", rc);
  return rc;
 }







 phy_mode = mii->xmii_mode[port];
 if (phy_mode != XMII_MODE_RGMII)
  return 0;

 return sja1105_clocking_setup_port(priv, port);
}
