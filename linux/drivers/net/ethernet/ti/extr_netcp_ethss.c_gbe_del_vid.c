
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbe_priv {int ale; } ;
struct gbe_intf {int active_vlans; struct gbe_priv* gbe_dev; } ;


 int clear_bit (int,int ) ;
 int cpsw_ale_del_vlan (int ,int,int ) ;

__attribute__((used)) static int gbe_del_vid(void *intf_priv, int vid)
{
 struct gbe_intf *gbe_intf = intf_priv;
 struct gbe_priv *gbe_dev = gbe_intf->gbe_dev;

 cpsw_ale_del_vlan(gbe_dev->ale, vid, 0);
 clear_bit(vid, gbe_intf->active_vlans);
 return 0;
}
