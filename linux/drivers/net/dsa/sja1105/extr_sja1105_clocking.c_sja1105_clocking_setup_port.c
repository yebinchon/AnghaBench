
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sja1105_xmii_params_entry {int* xmii_mode; int * phy_mac; } ;
struct TYPE_4__ {TYPE_3__* tables; } ;
struct sja1105_private {TYPE_1__ static_config; TYPE_2__* ds; } ;
struct device {int dummy; } ;
typedef int sja1105_phy_interface_t ;
typedef int sja1105_mii_role_t ;
struct TYPE_6__ {struct sja1105_xmii_params_entry* entries; } ;
struct TYPE_5__ {struct device* dev; } ;


 size_t BLK_IDX_XMII_PARAMS ;
 int EINVAL ;



 int dev_err (struct device*,char*,int,...) ;
 int sja1105_mii_clocking_setup (struct sja1105_private*,int,int ) ;
 int sja1105_rgmii_clocking_setup (struct sja1105_private*,int,int ) ;
 int sja1105_rmii_clocking_setup (struct sja1105_private*,int,int ) ;

int sja1105_clocking_setup_port(struct sja1105_private *priv, int port)
{
 struct sja1105_xmii_params_entry *mii;
 struct device *dev = priv->ds->dev;
 sja1105_phy_interface_t phy_mode;
 sja1105_mii_role_t role;
 int rc;

 mii = priv->static_config.tables[BLK_IDX_XMII_PARAMS].entries;


 phy_mode = mii->xmii_mode[port];

 role = mii->phy_mac[port];

 switch (phy_mode) {
 case 130:
  rc = sja1105_mii_clocking_setup(priv, port, role);
  break;
 case 128:
  rc = sja1105_rmii_clocking_setup(priv, port, role);
  break;
 case 129:
  rc = sja1105_rgmii_clocking_setup(priv, port, role);
  break;
 default:
  dev_err(dev, "Invalid interface mode specified: %d\n",
   phy_mode);
  return -EINVAL;
 }
 if (rc)
  dev_err(dev, "Clocking setup for port %d failed: %d\n",
   port, rc);
 return rc;
}
