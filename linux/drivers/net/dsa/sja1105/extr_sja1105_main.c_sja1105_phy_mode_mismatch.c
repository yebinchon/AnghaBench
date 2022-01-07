
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sja1105_xmii_params_entry {int * xmii_mode; } ;
struct TYPE_4__ {TYPE_1__* tables; } ;
struct sja1105_private {TYPE_2__ static_config; } ;
typedef int sja1105_phy_interface_t ;
typedef int phy_interface_t ;
struct TYPE_3__ {struct sja1105_xmii_params_entry* entries; } ;


 size_t BLK_IDX_XMII_PARAMS ;






 int XMII_MODE_MII ;
 int XMII_MODE_RGMII ;
 int XMII_MODE_RMII ;

__attribute__((used)) static bool sja1105_phy_mode_mismatch(struct sja1105_private *priv, int port,
          phy_interface_t interface)
{
 struct sja1105_xmii_params_entry *mii;
 sja1105_phy_interface_t phy_mode;

 mii = priv->static_config.tables[BLK_IDX_XMII_PARAMS].entries;
 phy_mode = mii->xmii_mode[port];

 switch (interface) {
 case 133:
  return (phy_mode != XMII_MODE_MII);
 case 128:
  return (phy_mode != XMII_MODE_RMII);
 case 132:
 case 131:
 case 130:
 case 129:
  return (phy_mode != XMII_MODE_RGMII);
 default:
  return 1;
 }
}
