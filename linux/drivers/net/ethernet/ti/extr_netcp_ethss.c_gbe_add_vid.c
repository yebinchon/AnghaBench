
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbe_priv {scalar_t__ ale_ports; int ale; } ;
struct gbe_intf {int active_vlans; struct gbe_priv* gbe_dev; } ;


 int GBE_MASK_NO_PORTS ;
 int GBE_PORT_MASK (scalar_t__) ;
 int cpsw_ale_add_vlan (int ,int,int ,int ,int ,int ) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int gbe_add_vid(void *intf_priv, int vid)
{
 struct gbe_intf *gbe_intf = intf_priv;
 struct gbe_priv *gbe_dev = gbe_intf->gbe_dev;

 set_bit(vid, gbe_intf->active_vlans);

 cpsw_ale_add_vlan(gbe_dev->ale, vid,
     GBE_PORT_MASK(gbe_dev->ale_ports),
     GBE_MASK_NO_PORTS,
     GBE_PORT_MASK(gbe_dev->ale_ports),
     GBE_PORT_MASK(gbe_dev->ale_ports - 1));

 return 0;
}
