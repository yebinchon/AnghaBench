
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sja1105_private {TYPE_1__* ds; } ;
struct device {int dummy; } ;
typedef scalar_t__ sja1105_mii_role_t ;
struct TYPE_2__ {struct device* dev; } ;


 scalar_t__ XMII_MAC ;
 scalar_t__ XMII_PHY ;
 int dev_dbg (struct device*,char*,char*) ;
 int sja1105_cgu_idiv_config (struct sja1105_private*,int,int,int) ;
 int sja1105_cgu_mii_ext_rx_clk_config (struct sja1105_private*,int) ;
 int sja1105_cgu_mii_ext_tx_clk_config (struct sja1105_private*,int) ;
 int sja1105_cgu_mii_rx_clk_config (struct sja1105_private*,int) ;
 int sja1105_cgu_mii_tx_clk_config (struct sja1105_private*,int,scalar_t__) ;

__attribute__((used)) static int sja1105_mii_clocking_setup(struct sja1105_private *priv, int port,
          sja1105_mii_role_t role)
{
 struct device *dev = priv->ds->dev;
 int rc;

 dev_dbg(dev, "Configuring MII-%s clocking\n",
  (role == XMII_MAC) ? "MAC" : "PHY");



 rc = sja1105_cgu_idiv_config(priv, port, (role == XMII_PHY), 1);
 if (rc < 0)
  return rc;





 rc = sja1105_cgu_mii_tx_clk_config(priv, port, role);
 if (rc < 0)
  return rc;




 rc = sja1105_cgu_mii_rx_clk_config(priv, port);
 if (rc < 0)
  return rc;

 if (role == XMII_PHY) {





  rc = sja1105_cgu_mii_ext_tx_clk_config(priv, port);
  if (rc < 0)
   return rc;




  rc = sja1105_cgu_mii_ext_rx_clk_config(priv, port);
  if (rc < 0)
   return rc;
 }
 return 0;
}
