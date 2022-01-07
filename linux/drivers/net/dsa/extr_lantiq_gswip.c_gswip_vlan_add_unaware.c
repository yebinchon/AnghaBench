
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct gswip_priv {int dev; TYPE_2__* vlans; TYPE_1__* hw_info; } ;
struct gswip_pce_table_entry {int index; int * val; void* table; int member_0; } ;
struct TYPE_4__ {struct net_device* bridge; } ;
struct TYPE_3__ {unsigned int max_ports; unsigned int cpu_port; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int BIT (int) ;
 int GSWIP_PCE_DEFPVID (int) ;
 void* GSWIP_TABLE_VLAN_MAPPING ;
 int dev_err (int ,char*,int) ;
 int gswip_pce_table_entry_read (struct gswip_priv*,struct gswip_pce_table_entry*) ;
 int gswip_pce_table_entry_write (struct gswip_priv*,struct gswip_pce_table_entry*) ;
 int gswip_switch_w (struct gswip_priv*,int ,int ) ;
 int gswip_vlan_active_create (struct gswip_priv*,struct net_device*,int,int ) ;
 int gswip_vlan_active_remove (struct gswip_priv*,int) ;

__attribute__((used)) static int gswip_vlan_add_unaware(struct gswip_priv *priv,
      struct net_device *bridge, int port)
{
 struct gswip_pce_table_entry vlan_mapping = {0,};
 unsigned int max_ports = priv->hw_info->max_ports;
 unsigned int cpu_port = priv->hw_info->cpu_port;
 bool active_vlan_created = 0;
 int idx = -1;
 int i;
 int err;


 for (i = max_ports; i < ARRAY_SIZE(priv->vlans); i++) {
  if (priv->vlans[i].bridge == bridge) {
   idx = i;
   break;
  }
 }




 if (idx == -1) {
  idx = gswip_vlan_active_create(priv, bridge, -1, 0);
  if (idx < 0)
   return idx;
  active_vlan_created = 1;

  vlan_mapping.index = idx;
  vlan_mapping.table = GSWIP_TABLE_VLAN_MAPPING;

  vlan_mapping.val[0] = 0;
 } else {

  vlan_mapping.index = idx;
  vlan_mapping.table = GSWIP_TABLE_VLAN_MAPPING;
  err = gswip_pce_table_entry_read(priv, &vlan_mapping);
  if (err) {
   dev_err(priv->dev, "failed to read VLAN mapping: %d\n",
    err);
   return err;
  }
 }


 vlan_mapping.val[1] |= BIT(cpu_port);
 vlan_mapping.val[1] |= BIT(port);
 err = gswip_pce_table_entry_write(priv, &vlan_mapping);
 if (err) {
  dev_err(priv->dev, "failed to write VLAN mapping: %d\n", err);

  if (active_vlan_created)
   gswip_vlan_active_remove(priv, idx);
  return err;
 }

 gswip_switch_w(priv, 0, GSWIP_PCE_DEFPVID(port));
 return 0;
}
