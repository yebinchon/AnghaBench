
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gemini_ethernet_port {int txq_order; int irq_every_tx_packets; int rx_coalesce_nsecs; } ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int rx_coalesce_usecs; } ;


 int EINVAL ;
 struct gemini_ethernet_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gmac_set_coalesce(struct net_device *netdev,
        struct ethtool_coalesce *ecmd)
{
 struct gemini_ethernet_port *port = netdev_priv(netdev);

 if (ecmd->tx_max_coalesced_frames < 1)
  return -EINVAL;
 if (ecmd->tx_max_coalesced_frames >= 1 << port->txq_order)
  return -EINVAL;

 port->irq_every_tx_packets = ecmd->tx_max_coalesced_frames;
 port->rx_coalesce_nsecs = ecmd->rx_coalesce_usecs * 1000;

 return 0;
}
