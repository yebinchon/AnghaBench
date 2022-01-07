
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocelot_port {scalar_t__ regs; } ;


 scalar_t__ readl (scalar_t__) ;

u32 ocelot_port_readl(struct ocelot_port *port, u32 reg)
{
 return readl(port->regs + reg);
}
