
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gswip_priv {TYPE_1__* vlans; int dev; } ;
struct gswip_pce_table_entry {int index; int valid; int table; int member_0; } ;
struct TYPE_2__ {int * bridge; } ;


 int GSWIP_TABLE_ACTIVE_VLAN ;
 int dev_err (int ,char*,int) ;
 int gswip_pce_table_entry_write (struct gswip_priv*,struct gswip_pce_table_entry*) ;

__attribute__((used)) static int gswip_vlan_active_remove(struct gswip_priv *priv, int idx)
{
 struct gswip_pce_table_entry vlan_active = {0,};
 int err;

 vlan_active.index = idx;
 vlan_active.table = GSWIP_TABLE_ACTIVE_VLAN;
 vlan_active.valid = 0;
 err = gswip_pce_table_entry_write(priv, &vlan_active);
 if (err)
  dev_err(priv->dev, "failed to delete active VLAN: %d\n", err);
 priv->vlans[idx].bridge = ((void*)0);

 return err;
}
