
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_txd {int dummy; } ;
struct alx_tx_queue {int count; scalar_t__ read_idx; scalar_t__ write_idx; int tpd; int bufs; } ;
struct alx_buffer {int dummy; } ;


 int alx_free_txbuf (struct alx_tx_queue*,int) ;
 int alx_get_tx_queue (struct alx_tx_queue*) ;
 int memset (int ,int ,int) ;
 int netdev_tx_reset_queue (int ) ;

__attribute__((used)) static void alx_free_txring_buf(struct alx_tx_queue *txq)
{
 int i;

 if (!txq->bufs)
  return;

 for (i = 0; i < txq->count; i++)
  alx_free_txbuf(txq, i);

 memset(txq->bufs, 0, txq->count * sizeof(struct alx_buffer));
 memset(txq->tpd, 0, txq->count * sizeof(struct alx_txd));
 txq->write_idx = 0;
 txq->read_idx = 0;

 netdev_tx_reset_queue(alx_get_tx_queue(txq));
}
