
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef void* u64 ;
struct be_aic_obj {int jiffies; void* tx_reqs_prev; void* rx_pkts_prev; } ;



__attribute__((used)) static void be_aic_update(struct be_aic_obj *aic, u64 rx_pkts, u64 tx_pkts,
     ulong now)
{
 aic->rx_pkts_prev = rx_pkts;
 aic->tx_reqs_prev = tx_pkts;
 aic->jiffies = now;
}
