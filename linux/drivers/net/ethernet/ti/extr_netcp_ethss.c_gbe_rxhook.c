
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_packet {int dummy; } ;
struct gbe_intf {int dummy; } ;


 int gbe_rxtstamp (struct gbe_intf*,struct netcp_packet*) ;

__attribute__((used)) static int gbe_rxhook(int order, void *data, struct netcp_packet *p_info)
{
 struct gbe_intf *gbe_intf = data;

 return gbe_rxtstamp(gbe_intf, p_info);
}
