
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gelic_wl_info {int dummy; } ;
struct gelic_port {int dummy; } ;


 struct gelic_wl_info* port_priv (struct gelic_port*) ;

__attribute__((used)) static inline struct gelic_wl_info *port_wl(struct gelic_port *port)
{
 return port_priv(port);
}
