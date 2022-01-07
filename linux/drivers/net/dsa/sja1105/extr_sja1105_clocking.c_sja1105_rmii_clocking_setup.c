
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
 int dev_dbg (struct device*,char*,char*) ;
 int sja1105_cgu_idiv_config (struct sja1105_private*,int,int,int) ;
 int sja1105_cgu_rmii_ext_tx_clk_config (struct sja1105_private*,int) ;
 int sja1105_cgu_rmii_pll_config (struct sja1105_private*) ;
 int sja1105_cgu_rmii_ref_clk_config (struct sja1105_private*,int) ;

__attribute__((used)) static int sja1105_rmii_clocking_setup(struct sja1105_private *priv, int port,
           sja1105_mii_role_t role)
{
 struct device *dev = priv->ds->dev;
 int rc;

 dev_dbg(dev, "Configuring RMII-%s clocking\n",
  (role == XMII_MAC) ? "MAC" : "PHY");

 if (role == XMII_MAC) {

  rc = sja1105_cgu_rmii_pll_config(priv);
  if (rc < 0)
   return rc;
 }

 rc = sja1105_cgu_idiv_config(priv, port, 0, 1);
 if (rc < 0)
  return rc;

 rc = sja1105_cgu_rmii_ref_clk_config(priv, port);
 if (rc < 0)
  return rc;
 if (role == XMII_MAC) {
  rc = sja1105_cgu_rmii_ext_tx_clk_config(priv, port);
  if (rc < 0)
   return rc;
 }
 return 0;
}
