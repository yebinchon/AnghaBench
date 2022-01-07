
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_packet {int dummy; } ;
struct gbe_intf {int dummy; } ;



__attribute__((used)) static inline int gbe_rxtstamp(struct gbe_intf *gbe_intf,
          struct netcp_packet *p_info)
{
 return 0;
}
