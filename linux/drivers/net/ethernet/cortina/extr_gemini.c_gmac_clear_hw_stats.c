
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gemini_ethernet_port {scalar_t__ gmac_base; } ;


 scalar_t__ GMAC_IN_BCAST ;
 scalar_t__ GMAC_IN_DISCARDS ;
 scalar_t__ GMAC_IN_ERRORS ;
 scalar_t__ GMAC_IN_MAC1 ;
 scalar_t__ GMAC_IN_MAC2 ;
 scalar_t__ GMAC_IN_MCAST ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void gmac_clear_hw_stats(struct net_device *netdev)
{
 struct gemini_ethernet_port *port = netdev_priv(netdev);

 readl(port->gmac_base + GMAC_IN_DISCARDS);
 readl(port->gmac_base + GMAC_IN_ERRORS);
 readl(port->gmac_base + GMAC_IN_MCAST);
 readl(port->gmac_base + GMAC_IN_BCAST);
 readl(port->gmac_base + GMAC_IN_MAC1);
 readl(port->gmac_base + GMAC_IN_MAC2);
}
