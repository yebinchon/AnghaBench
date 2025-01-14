
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* tables; } ;
struct sja1105_private {TYPE_2__ static_config; } ;
struct sja1105_l2_forwarding_entry {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_switch {struct sja1105_private* priv; } ;
struct TYPE_6__ {struct net_device* bridge_dev; } ;
struct TYPE_4__ {struct sja1105_l2_forwarding_entry* entries; } ;


 size_t BLK_IDX_L2_FORWARDING ;
 int SJA1105_NUM_PORTS ;
 int dsa_is_user_port (struct dsa_switch*,int) ;
 TYPE_3__* dsa_to_port (struct dsa_switch*,int) ;
 int sja1105_dynamic_config_write (struct sja1105_private*,size_t,int,struct sja1105_l2_forwarding_entry*,int) ;
 int sja1105_port_allow_traffic (struct sja1105_l2_forwarding_entry*,int,int,int) ;

__attribute__((used)) static int sja1105_bridge_member(struct dsa_switch *ds, int port,
     struct net_device *br, bool member)
{
 struct sja1105_l2_forwarding_entry *l2_fwd;
 struct sja1105_private *priv = ds->priv;
 int i, rc;

 l2_fwd = priv->static_config.tables[BLK_IDX_L2_FORWARDING].entries;

 for (i = 0; i < SJA1105_NUM_PORTS; i++) {



  if (!dsa_is_user_port(ds, i))
   continue;
  if (i == port)
   continue;
  if (dsa_to_port(ds, i)->bridge_dev != br)
   continue;
  sja1105_port_allow_traffic(l2_fwd, i, port, member);
  sja1105_port_allow_traffic(l2_fwd, port, i, member);

  rc = sja1105_dynamic_config_write(priv, BLK_IDX_L2_FORWARDING,
        i, &l2_fwd[i], 1);
  if (rc < 0)
   return rc;
 }

 return sja1105_dynamic_config_write(priv, BLK_IDX_L2_FORWARDING,
         port, &l2_fwd[port], 1);
}
