
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gelic_port {void* priv; } ;



__attribute__((used)) static inline void *port_priv(struct gelic_port *port)
{
 return port->priv;
}
