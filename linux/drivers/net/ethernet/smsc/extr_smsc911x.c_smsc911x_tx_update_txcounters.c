
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smsc911x_data {int dummy; } ;
struct TYPE_2__ {unsigned int tx_bytes; int tx_carrier_errors; scalar_t__ tx_aborted_errors; scalar_t__ collisions; int tx_packets; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int SMSC_WARN (struct smsc911x_data*,int ,char*) ;
 unsigned int TX_STS_ES_ ;
 unsigned int TX_STS_EXCESS_COL_ ;
 unsigned int TX_STS_LATE_COL_ ;
 unsigned int TX_STS_LOST_CARRIER_ ;
 int hw ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 unsigned int smsc911x_tx_get_txstatus (struct smsc911x_data*) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void smsc911x_tx_update_txcounters(struct net_device *dev)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 unsigned int tx_stat;

 while ((tx_stat = smsc911x_tx_get_txstatus(pdata)) != 0) {
  if (unlikely(tx_stat & 0x80000000)) {







   SMSC_WARN(pdata, hw, "Packet tag reserved bit is high");
  } else {
   if (unlikely(tx_stat & TX_STS_ES_)) {
    dev->stats.tx_errors++;
   } else {
    dev->stats.tx_packets++;
    dev->stats.tx_bytes += (tx_stat >> 16);
   }
   if (unlikely(tx_stat & TX_STS_EXCESS_COL_)) {
    dev->stats.collisions += 16;
    dev->stats.tx_aborted_errors += 1;
   } else {
    dev->stats.collisions +=
        ((tx_stat >> 3) & 0xF);
   }
   if (unlikely(tx_stat & TX_STS_LOST_CARRIER_))
    dev->stats.tx_carrier_errors += 1;
   if (unlikely(tx_stat & TX_STS_LATE_COL_)) {
    dev->stats.collisions++;
    dev->stats.tx_aborted_errors++;
   }
  }
 }
}
