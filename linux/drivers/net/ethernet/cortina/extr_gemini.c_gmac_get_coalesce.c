
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gemini_ethernet_port {int rx_coalesce_nsecs; int irq_every_tx_packets; } ;
struct ethtool_coalesce {int rx_max_coalesced_frames; int rx_coalesce_usecs; int tx_max_coalesced_frames; } ;


 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gmac_get_coalesce(struct net_device *netdev,
        struct ethtool_coalesce *ecmd)
{
 struct gemini_ethernet_port *port = netdev_priv(netdev);

 ecmd->rx_max_coalesced_frames = 1;
 ecmd->tx_max_coalesced_frames = port->irq_every_tx_packets;
 ecmd->rx_coalesce_usecs = port->rx_coalesce_nsecs / 1000;

 return 0;
}
