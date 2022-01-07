
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;


 int netdev_tx_completed_queue (struct netdev_queue*,unsigned int,unsigned int) ;

void octeon_report_tx_completion_to_bql(void *txq, unsigned int pkts_compl,
     unsigned int bytes_compl)
{
 struct netdev_queue *netdev_queue = txq;

 netdev_tx_completed_queue(netdev_queue, pkts_compl, bytes_compl);
}
