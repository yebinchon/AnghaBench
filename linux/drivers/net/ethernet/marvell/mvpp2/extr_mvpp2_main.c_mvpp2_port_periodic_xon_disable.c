
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {scalar_t__ base; } ;


 scalar_t__ MVPP2_GMAC_CTRL_1_REG ;
 int MVPP2_GMAC_PERIODIC_XON_EN_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mvpp2_port_periodic_xon_disable(struct mvpp2_port *port)
{
 u32 val;

 val = readl(port->base + MVPP2_GMAC_CTRL_1_REG) &
      ~MVPP2_GMAC_PERIODIC_XON_EN_MASK;
 writel(val, port->base + MVPP2_GMAC_CTRL_1_REG);
}
