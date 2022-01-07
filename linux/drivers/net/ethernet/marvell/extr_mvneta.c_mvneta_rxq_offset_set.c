
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_rx_queue {int id; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_RXQ_CONFIG_REG (int ) ;
 int MVNETA_RXQ_PKT_OFFSET_ALL_MASK ;
 int MVNETA_RXQ_PKT_OFFSET_MASK (int) ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;

__attribute__((used)) static void mvneta_rxq_offset_set(struct mvneta_port *pp,
      struct mvneta_rx_queue *rxq,
      int offset)
{
 u32 val;

 val = mvreg_read(pp, MVNETA_RXQ_CONFIG_REG(rxq->id));
 val &= ~MVNETA_RXQ_PKT_OFFSET_ALL_MASK;


 val |= MVNETA_RXQ_PKT_OFFSET_MASK(offset >> 3);
 mvreg_write(pp, MVNETA_RXQ_CONFIG_REG(rxq->id), val);
}
