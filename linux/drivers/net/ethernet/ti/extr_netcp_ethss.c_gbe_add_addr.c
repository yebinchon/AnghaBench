
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_addr {int addr; int type; } ;
struct gbe_priv {int dev; } ;
struct gbe_intf {struct gbe_priv* gbe_dev; } ;







 int dev_dbg (int ,char*,int ,int ) ;
 int gbe_add_mcast_addr (struct gbe_intf*,int ) ;
 int gbe_add_ucast_addr (struct gbe_intf*,int ) ;

__attribute__((used)) static int gbe_add_addr(void *intf_priv, struct netcp_addr *naddr)
{
 struct gbe_intf *gbe_intf = intf_priv;
 struct gbe_priv *gbe_dev = gbe_intf->gbe_dev;

 dev_dbg(gbe_dev->dev, "ethss adding address %pM, type %d\n",
  naddr->addr, naddr->type);

 switch (naddr->type) {
 case 129:
 case 131:
  gbe_add_mcast_addr(gbe_intf, naddr->addr);
  break;
 case 128:
 case 130:
  gbe_add_ucast_addr(gbe_intf, naddr->addr);
  break;
 case 132:

 default:
  break;
 }

 return 0;
}
