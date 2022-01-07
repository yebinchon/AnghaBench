
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocelot_port {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

void ocelot_port_writel(struct ocelot_port *port, u32 val, u32 reg)
{
 writel(val, port->regs + reg);
}
