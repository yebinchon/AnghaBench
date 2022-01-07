
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct gemini_ethernet_port {int msg_enable; } ;


 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gmac_set_msglevel(struct net_device *netdev, u32 level)
{
 struct gemini_ethernet_port *port = netdev_priv(netdev);

 port->msg_enable = level;
}
