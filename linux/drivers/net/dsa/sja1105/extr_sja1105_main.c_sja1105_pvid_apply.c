
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* tables; } ;
struct sja1105_private {TYPE_2__ static_config; } ;
struct sja1105_mac_config_entry {int vlanid; } ;
struct TYPE_3__ {struct sja1105_mac_config_entry* entries; } ;


 size_t BLK_IDX_MAC_CONFIG ;
 int sja1105_dynamic_config_write (struct sja1105_private*,size_t,int,struct sja1105_mac_config_entry*,int) ;

__attribute__((used)) static int sja1105_pvid_apply(struct sja1105_private *priv, int port, u16 pvid)
{
 struct sja1105_mac_config_entry *mac;

 mac = priv->static_config.tables[BLK_IDX_MAC_CONFIG].entries;

 mac[port].vlanid = pvid;

 return sja1105_dynamic_config_write(priv, BLK_IDX_MAC_CONFIG, port,
        &mac[port], 1);
}
