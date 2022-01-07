
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_rx_queue {int size; int time_coal; int pkts_coal; int id; int descs_phys; } ;
struct mvneta_port {scalar_t__ rx_offset_correction; int pkt_size; int bm_priv; } ;


 int MVNETA_RXQ_BASE_ADDR_REG (int ) ;
 int MVNETA_RXQ_SIZE_REG (int ) ;
 scalar_t__ MVNETA_RX_BUF_SIZE (int ) ;
 scalar_t__ NET_SKB_PAD ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ SZ_64K ;
 int mvneta_rx_pkts_coal_set (struct mvneta_port*,struct mvneta_rx_queue*,int ) ;
 int mvneta_rx_time_coal_set (struct mvneta_port*,struct mvneta_rx_queue*,int ) ;
 int mvneta_rxq_bm_disable (struct mvneta_port*,struct mvneta_rx_queue*) ;
 int mvneta_rxq_bm_enable (struct mvneta_port*,struct mvneta_rx_queue*) ;
 int mvneta_rxq_buf_size_set (struct mvneta_port*,struct mvneta_rx_queue*,scalar_t__) ;
 int mvneta_rxq_fill (struct mvneta_port*,struct mvneta_rx_queue*,int ) ;
 int mvneta_rxq_long_pool_set (struct mvneta_port*,struct mvneta_rx_queue*) ;
 int mvneta_rxq_non_occup_desc_add (struct mvneta_port*,struct mvneta_rx_queue*,int ) ;
 int mvneta_rxq_offset_set (struct mvneta_port*,struct mvneta_rx_queue*,scalar_t__) ;
 int mvneta_rxq_short_pool_set (struct mvneta_port*,struct mvneta_rx_queue*) ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;

__attribute__((used)) static void mvneta_rxq_hw_init(struct mvneta_port *pp,
          struct mvneta_rx_queue *rxq)
{

 mvreg_write(pp, MVNETA_RXQ_BASE_ADDR_REG(rxq->id), rxq->descs_phys);
 mvreg_write(pp, MVNETA_RXQ_SIZE_REG(rxq->id), rxq->size);


 mvneta_rx_pkts_coal_set(pp, rxq, rxq->pkts_coal);
 mvneta_rx_time_coal_set(pp, rxq, rxq->time_coal);

 if (!pp->bm_priv) {

  mvneta_rxq_offset_set(pp, rxq, 0);
  mvneta_rxq_buf_size_set(pp, rxq, PAGE_SIZE < SZ_64K ?
     PAGE_SIZE :
     MVNETA_RX_BUF_SIZE(pp->pkt_size));
  mvneta_rxq_bm_disable(pp, rxq);
  mvneta_rxq_fill(pp, rxq, rxq->size);
 } else {

  mvneta_rxq_offset_set(pp, rxq,
          NET_SKB_PAD - pp->rx_offset_correction);

  mvneta_rxq_bm_enable(pp, rxq);

  mvneta_rxq_long_pool_set(pp, rxq);
  mvneta_rxq_short_pool_set(pp, rxq);
  mvneta_rxq_non_occup_desc_add(pp, rxq, rxq->size);
 }
}
