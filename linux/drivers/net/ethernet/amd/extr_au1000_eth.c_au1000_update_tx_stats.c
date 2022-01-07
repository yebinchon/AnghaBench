
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device_stats {int tx_carrier_errors; int tx_aborted_errors; int tx_errors; } ;
struct net_device {TYPE_1__* phydev; struct net_device_stats stats; } ;
struct TYPE_2__ {scalar_t__ duplex; } ;


 scalar_t__ DUPLEX_FULL ;
 int TX_FRAME_ABORTED ;
 int TX_JAB_TIMEOUT ;
 int TX_LOSS_CARRIER ;
 int TX_NO_CARRIER ;
 int TX_UNDERRUN ;

__attribute__((used)) static void au1000_update_tx_stats(struct net_device *dev, u32 status)
{
 struct net_device_stats *ps = &dev->stats;

 if (status & TX_FRAME_ABORTED) {
  if (!dev->phydev || (DUPLEX_FULL == dev->phydev->duplex)) {
   if (status & (TX_JAB_TIMEOUT | TX_UNDERRUN)) {



    ps->tx_errors++;
    ps->tx_aborted_errors++;
   }
  } else {
   ps->tx_errors++;
   ps->tx_aborted_errors++;
   if (status & (TX_NO_CARRIER | TX_LOSS_CARRIER))
    ps->tx_carrier_errors++;
  }
 }
}
