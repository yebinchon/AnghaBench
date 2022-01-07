
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rx_bytes; int multicast; int rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;


 int RXSR_MULTICAST ;
 int netdev_dbg (struct net_device*,char*,int) ;

__attribute__((used)) static void ks8842_update_rx_counters(struct net_device *netdev, u32 status,
 int len)
{
 netdev_dbg(netdev, "RX packet, len: %d\n", len);

 netdev->stats.rx_packets++;
 netdev->stats.rx_bytes += len;
 if (status & RXSR_MULTICAST)
  netdev->stats.multicast++;
}
