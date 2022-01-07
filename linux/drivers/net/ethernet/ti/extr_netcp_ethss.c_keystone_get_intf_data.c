
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int dummy; } ;
struct gbe_intf {int dummy; } ;


 int gbe_module ;
 struct gbe_intf* netcp_module_get_intf_data (int *,struct netcp_intf*) ;
 int xgbe_module ;

__attribute__((used)) static struct gbe_intf *keystone_get_intf_data(struct netcp_intf *netcp)
{
 struct gbe_intf *gbe_intf;

 gbe_intf = netcp_module_get_intf_data(&gbe_module, netcp);
 if (!gbe_intf)
  gbe_intf = netcp_module_get_intf_data(&xgbe_module, netcp);

 return gbe_intf;
}
