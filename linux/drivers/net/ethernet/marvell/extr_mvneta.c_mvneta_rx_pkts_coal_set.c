
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_rx_queue {int id; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_RXQ_NON_OCCUPIED (int ) ;
 int MVNETA_RXQ_THRESHOLD_REG (int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;

__attribute__((used)) static void mvneta_rx_pkts_coal_set(struct mvneta_port *pp,
        struct mvneta_rx_queue *rxq, u32 value)
{
 mvreg_write(pp, MVNETA_RXQ_THRESHOLD_REG(rxq->id),
      value | MVNETA_RXQ_NON_OCCUPIED(0));
}
