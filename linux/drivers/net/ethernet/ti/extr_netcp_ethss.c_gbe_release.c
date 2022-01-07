
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gbe_intf {int dev; struct gbe_intf* slave; int gbe_intf_list; TYPE_1__* ndev; } ;
struct TYPE_2__ {int * ethtool_ops; } ;


 int devm_kfree (int ,struct gbe_intf*) ;
 int list_del (int *) ;

__attribute__((used)) static int gbe_release(void *intf_priv)
{
 struct gbe_intf *gbe_intf = intf_priv;

 gbe_intf->ndev->ethtool_ops = ((void*)0);
 list_del(&gbe_intf->gbe_intf_list);
 devm_kfree(gbe_intf->dev, gbe_intf->slave);
 devm_kfree(gbe_intf->dev, gbe_intf);
 return 0;
}
