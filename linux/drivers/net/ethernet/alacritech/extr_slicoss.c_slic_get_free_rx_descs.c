
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_rx_queue {int len; int done_idx; int put_idx; } ;


 unsigned int slic_get_free_queue_descs (int ,int ,int ) ;

__attribute__((used)) static unsigned int slic_get_free_rx_descs(struct slic_rx_queue *rxq)
{
 return slic_get_free_queue_descs(rxq->put_idx, rxq->done_idx, rxq->len);
}
