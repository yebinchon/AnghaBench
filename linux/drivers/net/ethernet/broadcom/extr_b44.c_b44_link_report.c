
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b44 {int flags; int dev; } ;


 int B44_FLAG_100_BASE_T ;
 int B44_FLAG_FULL_DUPLEX ;
 int B44_FLAG_RX_PAUSE ;
 int B44_FLAG_TX_PAUSE ;
 int netdev_info (int ,char*,...) ;
 int netif_carrier_ok (int ) ;

__attribute__((used)) static void b44_link_report(struct b44 *bp)
{
 if (!netif_carrier_ok(bp->dev)) {
  netdev_info(bp->dev, "Link is down\n");
 } else {
  netdev_info(bp->dev, "Link is up at %d Mbps, %s duplex\n",
       (bp->flags & B44_FLAG_100_BASE_T) ? 100 : 10,
       (bp->flags & B44_FLAG_FULL_DUPLEX) ? "full" : "half");

  netdev_info(bp->dev, "Flow control is %s for TX and %s for RX\n",
       (bp->flags & B44_FLAG_TX_PAUSE) ? "on" : "off",
       (bp->flags & B44_FLAG_RX_PAUSE) ? "on" : "off");
 }
}
