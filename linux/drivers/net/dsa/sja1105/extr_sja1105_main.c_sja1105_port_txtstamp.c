
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sja1105_private {struct sja1105_port* ports; } ;
struct sja1105_port {int hwts_tx_en; } ;
struct dsa_switch {struct sja1105_private* priv; } ;



__attribute__((used)) static bool sja1105_port_txtstamp(struct dsa_switch *ds, int port,
      struct sk_buff *skb, unsigned int type)
{
 struct sja1105_private *priv = ds->priv;
 struct sja1105_port *sp = &priv->ports[port];

 if (!sp->hwts_tx_en)
  return 0;

 return 1;
}
