
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_private {int dummy; } ;
struct phylink_link_state {int speed; int interface; } ;
struct dsa_switch {int dev; struct sja1105_private* priv; } ;


 unsigned int MLO_AN_INBAND ;
 int dev_err (int ,char*) ;
 int sja1105_adjust_port_config (struct sja1105_private*,int,int ) ;
 scalar_t__ sja1105_phy_mode_mismatch (struct sja1105_private*,int,int ) ;

__attribute__((used)) static void sja1105_mac_config(struct dsa_switch *ds, int port,
          unsigned int link_an_mode,
          const struct phylink_link_state *state)
{
 struct sja1105_private *priv = ds->priv;

 if (sja1105_phy_mode_mismatch(priv, port, state->interface))
  return;

 if (link_an_mode == MLO_AN_INBAND) {
  dev_err(ds->dev, "In-band AN not supported!\n");
  return;
 }

 sja1105_adjust_port_config(priv, port, state->speed);
}
