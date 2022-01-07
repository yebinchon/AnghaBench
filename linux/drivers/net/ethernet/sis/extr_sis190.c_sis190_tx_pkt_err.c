
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device_stats {int tx_errors; int tx_carrier_errors; int tx_fifo_errors; int tx_aborted_errors; int tx_window_errors; } ;


 int FIFO ;
 int LINK ;
 int TABRT ;
 int TxErrMask ;
 int WND ;
 int unlikely (int) ;

__attribute__((used)) static inline int sis190_tx_pkt_err(u32 status, struct net_device_stats *stats)
{


 if (!unlikely(status & (WND | TABRT | FIFO | LINK)))
  return 0;

 if (status & WND)
  stats->tx_window_errors++;
 if (status & TABRT)
  stats->tx_aborted_errors++;
 if (status & FIFO)
  stats->tx_fifo_errors++;
 if (status & LINK)
  stats->tx_carrier_errors++;

 stats->tx_errors++;

 return -1;
}
