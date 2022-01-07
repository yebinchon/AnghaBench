
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qede_rx_queue {int rxq_id; } ;
struct qede_dev {int dummy; } ;
struct TYPE_2__ {char* string; } ;


 int ETH_GSTRING_LEN ;
 int QEDE_NUM_RQSTATS ;
 TYPE_1__* qede_rqstats_arr ;
 int sprintf (int *,char*,int,char*) ;

__attribute__((used)) static void qede_get_strings_stats_rxq(struct qede_dev *edev,
           struct qede_rx_queue *rxq, u8 **buf)
{
 int i;

 for (i = 0; i < QEDE_NUM_RQSTATS; i++) {
  sprintf(*buf, "%d: %s", rxq->rxq_id,
   qede_rqstats_arr[i].string);
  *buf += ETH_GSTRING_LEN;
 }
}
