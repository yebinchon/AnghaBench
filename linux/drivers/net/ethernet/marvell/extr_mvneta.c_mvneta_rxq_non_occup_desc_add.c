
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_rx_queue {int id; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_RXQ_ADD_NON_OCCUPIED_MAX ;
 int MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT ;
 int MVNETA_RXQ_STATUS_UPDATE_REG (int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;

__attribute__((used)) static void mvneta_rxq_non_occup_desc_add(struct mvneta_port *pp,
       struct mvneta_rx_queue *rxq,
       int ndescs)
{



 while (ndescs > MVNETA_RXQ_ADD_NON_OCCUPIED_MAX) {
  mvreg_write(pp, MVNETA_RXQ_STATUS_UPDATE_REG(rxq->id),
       (MVNETA_RXQ_ADD_NON_OCCUPIED_MAX <<
        MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT));
  ndescs -= MVNETA_RXQ_ADD_NON_OCCUPIED_MAX;
 }

 mvreg_write(pp, MVNETA_RXQ_STATUS_UPDATE_REG(rxq->id),
      (ndescs << MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT));
}
