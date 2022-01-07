
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* tables; } ;
struct sja1105_private {TYPE_4__* info; TYPE_3__ static_config; TYPE_1__* ds; } ;
struct sja1105_mac_config_entry {int speed; } ;
struct device {int dummy; } ;
typedef int sja1105_speed_t ;
typedef scalar_t__ sja1105_mii_role_t ;
struct TYPE_8__ {int (* setup_rgmii_delay ) (struct sja1105_private*,int) ;} ;
struct TYPE_6__ {struct sja1105_mac_config_entry* entries; } ;
struct TYPE_5__ {struct device* dev; } ;


 size_t BLK_IDX_MAC_CONFIG ;
 int EINVAL ;




 scalar_t__ XMII_MAC ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*) ;
 int sja1105_cgu_idiv_config (struct sja1105_private*,int,int,int) ;
 int sja1105_cgu_rgmii_tx_clk_config (struct sja1105_private*,int,int) ;
 int sja1105_rgmii_cfg_pad_tx_config (struct sja1105_private*,int) ;
 int stub1 (struct sja1105_private*,int) ;

__attribute__((used)) static int sja1105_rgmii_clocking_setup(struct sja1105_private *priv, int port,
     sja1105_mii_role_t role)
{
 struct device *dev = priv->ds->dev;
 struct sja1105_mac_config_entry *mac;
 sja1105_speed_t speed;
 int rc;

 mac = priv->static_config.tables[BLK_IDX_MAC_CONFIG].entries;
 speed = mac[port].speed;

 dev_dbg(dev, "Configuring port %d RGMII at speed %dMbps\n",
  port, speed);

 switch (speed) {
 case 131:

  rc = sja1105_cgu_idiv_config(priv, port, 0, 1);
  break;
 case 130:

  rc = sja1105_cgu_idiv_config(priv, port, 1, 1);
  break;
 case 129:

  rc = sja1105_cgu_idiv_config(priv, port, 1, 10);
  break;
 case 128:



  dev_dbg(dev, "Speed not available, skipping CGU config\n");
  return 0;
 default:
  rc = -EINVAL;
 }

 if (rc < 0) {
  dev_err(dev, "Failed to configure idiv\n");
  return rc;
 }
 rc = sja1105_cgu_rgmii_tx_clk_config(priv, port, speed);
 if (rc < 0) {
  dev_err(dev, "Failed to configure RGMII Tx clock\n");
  return rc;
 }
 rc = sja1105_rgmii_cfg_pad_tx_config(priv, port);
 if (rc < 0) {
  dev_err(dev, "Failed to configure Tx pad registers\n");
  return rc;
 }
 if (!priv->info->setup_rgmii_delay)
  return 0;




 if (role == XMII_MAC)
  return 0;

 return priv->info->setup_rgmii_delay(priv, port);
}
