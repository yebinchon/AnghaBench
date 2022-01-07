
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_rx_queue {int id; } ;
struct mvpp2_rx_desc {int dummy; } ;
struct mvpp2_port {int dummy; } ;


 int MVPP2_RXD_BM_POOL_ID_MASK ;
 int MVPP2_RXD_BM_POOL_ID_OFFS ;
 int mvpp2_bm_pool_put (struct mvpp2_port*,int,int ,int ) ;
 int mvpp2_rxdesc_cookie_get (struct mvpp2_port*,struct mvpp2_rx_desc*) ;
 int mvpp2_rxdesc_dma_addr_get (struct mvpp2_port*,struct mvpp2_rx_desc*) ;
 int mvpp2_rxdesc_status_get (struct mvpp2_port*,struct mvpp2_rx_desc*) ;
 struct mvpp2_rx_desc* mvpp2_rxq_next_desc_get (struct mvpp2_rx_queue*) ;
 int mvpp2_rxq_received (struct mvpp2_port*,int ) ;
 int mvpp2_rxq_status_update (struct mvpp2_port*,int ,int,int) ;

__attribute__((used)) static void mvpp2_rxq_drop_pkts(struct mvpp2_port *port,
    struct mvpp2_rx_queue *rxq)
{
 int rx_received, i;

 rx_received = mvpp2_rxq_received(port, rxq->id);
 if (!rx_received)
  return;

 for (i = 0; i < rx_received; i++) {
  struct mvpp2_rx_desc *rx_desc = mvpp2_rxq_next_desc_get(rxq);
  u32 status = mvpp2_rxdesc_status_get(port, rx_desc);
  int pool;

  pool = (status & MVPP2_RXD_BM_POOL_ID_MASK) >>
   MVPP2_RXD_BM_POOL_ID_OFFS;

  mvpp2_bm_pool_put(port, pool,
      mvpp2_rxdesc_dma_addr_get(port, rx_desc),
      mvpp2_rxdesc_cookie_get(port, rx_desc));
 }
 mvpp2_rxq_status_update(port, rxq->id, rx_received, rx_received);
}
