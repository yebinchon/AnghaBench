
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int multicast; int rx_length_errors; int rx_crc_errors; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 unsigned int RX_STS_CRC_ERR_ ;
 unsigned int RX_STS_ES_ ;
 unsigned int RX_STS_FRAME_TYPE_ ;
 unsigned int RX_STS_LENGTH_ERR_ ;
 unsigned int RX_STS_MCAST_ ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
smsc911x_rx_counterrors(struct net_device *dev, unsigned int rxstat)
{
 int crc_err = 0;

 if (unlikely(rxstat & RX_STS_ES_)) {
  dev->stats.rx_errors++;
  if (unlikely(rxstat & RX_STS_CRC_ERR_)) {
   dev->stats.rx_crc_errors++;
   crc_err = 1;
  }
 }
 if (likely(!crc_err)) {
  if (unlikely((rxstat & RX_STS_FRAME_TYPE_) &&
        (rxstat & RX_STS_LENGTH_ERR_)))
   dev->stats.rx_length_errors++;
  if (rxstat & RX_STS_MCAST_)
   dev->stats.multicast++;
 }
}
