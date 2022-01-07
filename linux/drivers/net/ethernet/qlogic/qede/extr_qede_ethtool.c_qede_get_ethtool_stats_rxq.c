
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct qede_rx_queue {int dummy; } ;
struct TYPE_2__ {int offset; } ;


 int QEDE_NUM_RQSTATS ;
 TYPE_1__* qede_rqstats_arr ;

__attribute__((used)) static void qede_get_ethtool_stats_rxq(struct qede_rx_queue *rxq, u64 **buf)
{
 int i;

 for (i = 0; i < QEDE_NUM_RQSTATS; i++) {
  **buf = *((u64 *)(((void *)rxq) + qede_rqstats_arr[i].offset));
  (*buf)++;
 }
}
