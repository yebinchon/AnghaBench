
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev_addr; } ;
struct TYPE_2__ {scalar_t__* bins; int unicast; int multicast; int broadcast; } ;
struct de4x5_private {TYPE_1__ pktStats; } ;


 int DE4X5_PKT_BIN_SZ ;
 int DE4X5_PKT_STAT_SZ ;
 scalar_t__ ether_addr_equal (char*,int ) ;
 scalar_t__ is_broadcast_ether_addr (char*) ;
 scalar_t__ is_multicast_ether_addr (char*) ;
 int memset (char*,int ,int) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
de4x5_local_stats(struct net_device *dev, char *buf, int pkt_len)
{
    struct de4x5_private *lp = netdev_priv(dev);
    int i;

    for (i=1; i<DE4X5_PKT_STAT_SZ-1; i++) {
        if (pkt_len < (i*DE4X5_PKT_BIN_SZ)) {
     lp->pktStats.bins[i]++;
     i = DE4X5_PKT_STAT_SZ;
 }
    }
    if (is_multicast_ether_addr(buf)) {
        if (is_broadcast_ether_addr(buf)) {
     lp->pktStats.broadcast++;
 } else {
     lp->pktStats.multicast++;
 }
    } else if (ether_addr_equal(buf, dev->dev_addr)) {
        lp->pktStats.unicast++;
    }

    lp->pktStats.bins[0]++;
    if (lp->pktStats.bins[0] == 0) {
        memset((char *)&lp->pktStats, 0, sizeof(lp->pktStats));
    }
}
