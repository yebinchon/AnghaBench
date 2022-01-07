
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; scalar_t__ dma_addr; int * v_addr; int * tpbuff; } ;
struct emac_tx_queue {TYPE_1__ tpd; } ;
struct emac_adapter {struct emac_tx_queue tx_q; } ;


 int emac_tx_q_descs_free (struct emac_adapter*) ;
 int kfree (int *) ;

__attribute__((used)) static void emac_tx_q_bufs_free(struct emac_adapter *adpt)
{
 struct emac_tx_queue *tx_q = &adpt->tx_q;

 emac_tx_q_descs_free(adpt);

 kfree(tx_q->tpd.tpbuff);
 tx_q->tpd.tpbuff = ((void*)0);
 tx_q->tpd.v_addr = ((void*)0);
 tx_q->tpd.dma_addr = 0;
 tx_q->tpd.size = 0;
}
