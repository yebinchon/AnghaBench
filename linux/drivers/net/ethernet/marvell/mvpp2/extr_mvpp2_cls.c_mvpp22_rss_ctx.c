
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_port {int* rss_ctx; } ;



__attribute__((used)) static inline int mvpp22_rss_ctx(struct mvpp2_port *port, int port_rss_ctx)
{
 return port->rss_ctx[port_rss_ctx];
}
