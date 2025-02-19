
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef size_t u16 ;
struct hinic_txq_stats {int dummy; } ;
struct hinic_rxq_stats {int dummy; } ;
struct hinic_dev {size_t num_qps; int * rxqs; int * txqs; } ;
struct TYPE_4__ {int offset; int size; } ;


 size_t ARRAY_LEN (TYPE_1__*) ;
 TYPE_1__* hinic_rx_queue_stats ;
 int hinic_rxq_get_stats (int *,struct hinic_rxq_stats*) ;
 TYPE_1__* hinic_tx_queue_stats ;
 int hinic_txq_get_stats (int *,struct hinic_txq_stats*) ;

__attribute__((used)) static void get_drv_queue_stats(struct hinic_dev *nic_dev, u64 *data)
{
 struct hinic_txq_stats txq_stats;
 struct hinic_rxq_stats rxq_stats;
 u16 i = 0, j = 0, qid = 0;
 char *p;

 for (qid = 0; qid < nic_dev->num_qps; qid++) {
  if (!nic_dev->txqs)
   break;

  hinic_txq_get_stats(&nic_dev->txqs[qid], &txq_stats);
  for (j = 0; j < ARRAY_LEN(hinic_tx_queue_stats); j++, i++) {
   p = (char *)&txq_stats +
    hinic_tx_queue_stats[j].offset;
   data[i] = (hinic_tx_queue_stats[j].size ==
     sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
  }
 }

 for (qid = 0; qid < nic_dev->num_qps; qid++) {
  if (!nic_dev->rxqs)
   break;

  hinic_rxq_get_stats(&nic_dev->rxqs[qid], &rxq_stats);
  for (j = 0; j < ARRAY_LEN(hinic_rx_queue_stats); j++, i++) {
   p = (char *)&rxq_stats +
    hinic_rx_queue_stats[j].offset;
   data[i] = (hinic_rx_queue_stats[j].size ==
     sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
  }
 }
}
