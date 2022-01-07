
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* tables; } ;
struct sja1105_private {TYPE_2__ static_config; } ;
struct sja1105_mac_config_entry {int ingress; int egress; int dyn_learn; } ;
struct dsa_switch {int dev; struct sja1105_private* priv; } ;
struct TYPE_3__ {struct sja1105_mac_config_entry* entries; } ;


 size_t BLK_IDX_MAC_CONFIG ;





 int dev_err (int ,char*,int) ;
 int sja1105_dynamic_config_write (struct sja1105_private*,size_t,int,struct sja1105_mac_config_entry*,int) ;

__attribute__((used)) static void sja1105_bridge_stp_state_set(struct dsa_switch *ds, int port,
      u8 state)
{
 struct sja1105_private *priv = ds->priv;
 struct sja1105_mac_config_entry *mac;

 mac = priv->static_config.tables[BLK_IDX_MAC_CONFIG].entries;

 switch (state) {
 case 131:
 case 132:





  mac[port].ingress = 0;
  mac[port].egress = 0;
  mac[port].dyn_learn = 0;
  break;
 case 128:
  mac[port].ingress = 1;
  mac[port].egress = 0;
  mac[port].dyn_learn = 0;
  break;
 case 129:
  mac[port].ingress = 1;
  mac[port].egress = 0;
  mac[port].dyn_learn = 1;
  break;
 case 130:
  mac[port].ingress = 1;
  mac[port].egress = 1;
  mac[port].dyn_learn = 1;
  break;
 default:
  dev_err(ds->dev, "invalid STP state: %d\n", state);
  return;
 }

 sja1105_dynamic_config_write(priv, BLK_IDX_MAC_CONFIG, port,
         &mac[port], 1);
}
