
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tx_packets; int tx_aborted_errors; int tx_fifo_errors; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int GRETH_TXBD_ERR_AL ;
 int GRETH_TXBD_ERR_LC ;
 int GRETH_TXBD_ERR_UE ;
 int GRETH_TXBD_STATUS ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void greth_update_tx_stats(struct net_device *dev, u32 stat)
{

 if (unlikely(stat & GRETH_TXBD_STATUS)) {
  dev->stats.tx_errors++;
  if (stat & GRETH_TXBD_ERR_AL)
   dev->stats.tx_aborted_errors++;
  if (stat & GRETH_TXBD_ERR_UE)
   dev->stats.tx_fifo_errors++;
  if (stat & GRETH_TXBD_ERR_LC)
   dev->stats.tx_aborted_errors++;
 }
 dev->stats.tx_packets++;
}
