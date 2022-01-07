
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tx_bytes; int collisions; int tx_heartbeat_errors; int tx_packets; int tx_carrier_errors; int tx_aborted_errors; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int TDES0_COLLISION_COUNT_MASK_ ;
 int TDES0_COLLISION_COUNT_SHFT_ ;
 int TDES0_ERROR_SUMMARY_ ;
 int TDES0_EXCESSIVE_COLLISIONS_ ;
 int TDES0_EXCESSIVE_DEFERRAL_ ;
 int TDES0_HEARTBEAT_FAIL_ ;
 int TDES0_LOSS_OF_CARRIER_ ;
 int TDES0_NO_CARRIER_ ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
smsc9420_tx_update_stats(struct net_device *dev, u32 status, u32 length)
{
 if (unlikely(status & TDES0_ERROR_SUMMARY_)) {
  dev->stats.tx_errors++;
  if (status & (TDES0_EXCESSIVE_DEFERRAL_ |
   TDES0_EXCESSIVE_COLLISIONS_))
   dev->stats.tx_aborted_errors++;

  if (status & (TDES0_LOSS_OF_CARRIER_ | TDES0_NO_CARRIER_))
   dev->stats.tx_carrier_errors++;
 } else {
  dev->stats.tx_packets++;
  dev->stats.tx_bytes += (length & 0x7FF);
 }

 if (unlikely(status & TDES0_EXCESSIVE_COLLISIONS_)) {
  dev->stats.collisions += 16;
 } else {
  dev->stats.collisions +=
   (status & TDES0_COLLISION_COUNT_MASK_) >>
   TDES0_COLLISION_COUNT_SHFT_;
 }

 if (unlikely(status & TDES0_HEARTBEAT_FAIL_))
  dev->stats.tx_heartbeat_errors++;
}
