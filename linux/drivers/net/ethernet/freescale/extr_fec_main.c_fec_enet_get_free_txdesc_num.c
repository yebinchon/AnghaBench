
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dsize_log2; int ring_size; scalar_t__ cur; } ;
struct fec_enet_priv_tx_q {TYPE_1__ bd; scalar_t__ dirty_tx; } ;



__attribute__((used)) static int fec_enet_get_free_txdesc_num(struct fec_enet_priv_tx_q *txq)
{
 int entries;

 entries = (((const char *)txq->dirty_tx -
   (const char *)txq->bd.cur) >> txq->bd.dsize_log2) - 1;

 return entries >= 0 ? entries : entries + txq->bd.ring_size;
}
