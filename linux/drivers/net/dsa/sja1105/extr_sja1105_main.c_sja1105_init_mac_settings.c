
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sja1105_table {int entry_count; struct sja1105_mac_config_entry* entries; TYPE_2__* ops; } ;
struct TYPE_3__ {struct sja1105_table* tables; } ;
struct sja1105_private {int ds; TYPE_1__ static_config; } ;
struct sja1105_mac_config_entry {int maxage; int vlanid; int ing_mirr; int egr_mirr; int drpnona664; int drpdtag; int drpuntag; int retag; int dyn_learn; int egress; int ingress; int vlanprio; int tp_delout; int tp_delin; int speed; int ifg; int enabled; int base; int top; } ;
struct TYPE_4__ {int unpacked_entry_size; } ;


 size_t BLK_IDX_MAC_CONFIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SJA1105_NUM_PORTS ;
 int SJA1105_SPEED_AUTO ;
 int dsa_upstream_port (int ,int) ;
 struct sja1105_mac_config_entry* kcalloc (int,int ,int ) ;
 int kfree (struct sja1105_mac_config_entry*) ;

__attribute__((used)) static int sja1105_init_mac_settings(struct sja1105_private *priv)
{
 struct sja1105_mac_config_entry default_mac = {




  .top = {0x3F, 0x7F, 0xBF, 0xFF, 0x13F, 0x17F, 0x1BF, 0x1FF},
  .base = {0x0, 0x40, 0x80, 0xC0, 0x100, 0x140, 0x180, 0x1C0},
  .enabled = {1, 1, 1, 1, 1, 1, 1, 1},

  .ifg = 0,



  .speed = SJA1105_SPEED_AUTO,

  .tp_delin = 0,
  .tp_delout = 0,

  .maxage = 0xFF,

  .vlanprio = 0,
  .vlanid = 1,
  .ing_mirr = 0,
  .egr_mirr = 0,

  .drpnona664 = 0,

  .drpdtag = 0,

  .drpuntag = 0,

  .retag = 0,



  .dyn_learn = 0,
  .egress = 0,
  .ingress = 0,
 };
 struct sja1105_mac_config_entry *mac;
 struct sja1105_table *table;
 int i;

 table = &priv->static_config.tables[BLK_IDX_MAC_CONFIG];


 if (table->entry_count) {
  kfree(table->entries);
  table->entry_count = 0;
 }

 table->entries = kcalloc(SJA1105_NUM_PORTS,
     table->ops->unpacked_entry_size, GFP_KERNEL);
 if (!table->entries)
  return -ENOMEM;

 table->entry_count = SJA1105_NUM_PORTS;

 mac = table->entries;

 for (i = 0; i < SJA1105_NUM_PORTS; i++) {
  mac[i] = default_mac;
  if (i == dsa_upstream_port(priv->ds, i)) {



   mac[i].dyn_learn = 1;
   mac[i].ingress = 1;
   mac[i].egress = 1;
  }
 }

 return 0;
}
