
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ dma_addr; int * v_addr; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ dma_addr; int * v_addr; int * rfbuff; } ;
struct emac_rx_queue {TYPE_1__ rrd; TYPE_2__ rfd; } ;
struct emac_adapter {struct emac_rx_queue rx_q; } ;


 int emac_rx_q_free_descs (struct emac_adapter*) ;
 int kfree (int *) ;

__attribute__((used)) static void emac_rx_q_bufs_free(struct emac_adapter *adpt)
{
 struct emac_rx_queue *rx_q = &adpt->rx_q;

 emac_rx_q_free_descs(adpt);

 kfree(rx_q->rfd.rfbuff);
 rx_q->rfd.rfbuff = ((void*)0);

 rx_q->rfd.v_addr = ((void*)0);
 rx_q->rfd.dma_addr = 0;
 rx_q->rfd.size = 0;

 rx_q->rrd.v_addr = ((void*)0);
 rx_q->rrd.dma_addr = 0;
 rx_q->rrd.size = 0;
}
