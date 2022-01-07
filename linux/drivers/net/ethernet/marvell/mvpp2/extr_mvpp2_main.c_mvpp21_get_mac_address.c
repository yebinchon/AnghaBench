
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mvpp2_port {TYPE_1__* priv; scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__ lms_base; } ;


 scalar_t__ MVPP2_GMAC_CTRL_1_REG ;
 int MVPP2_GMAC_SA_LOW_OFFS ;
 scalar_t__ MVPP2_SRC_ADDR_HIGH ;
 scalar_t__ MVPP2_SRC_ADDR_MIDDLE ;
 int readl (scalar_t__) ;

__attribute__((used)) static void mvpp21_get_mac_address(struct mvpp2_port *port, unsigned char *addr)
{
 u32 mac_addr_l, mac_addr_m, mac_addr_h;

 mac_addr_l = readl(port->base + MVPP2_GMAC_CTRL_1_REG);
 mac_addr_m = readl(port->priv->lms_base + MVPP2_SRC_ADDR_MIDDLE);
 mac_addr_h = readl(port->priv->lms_base + MVPP2_SRC_ADDR_HIGH);
 addr[0] = (mac_addr_h >> 24) & 0xFF;
 addr[1] = (mac_addr_h >> 16) & 0xFF;
 addr[2] = (mac_addr_h >> 8) & 0xFF;
 addr[3] = mac_addr_h & 0xFF;
 addr[4] = mac_addr_m & 0xFF;
 addr[5] = (mac_addr_l >> MVPP2_GMAC_SA_LOW_OFFS) & 0xFF;
}
