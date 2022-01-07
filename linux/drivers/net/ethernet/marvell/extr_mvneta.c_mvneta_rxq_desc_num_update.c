
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_rx_queue {int id; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT ;
 int MVNETA_RXQ_STATUS_UPDATE_REG (int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;

__attribute__((used)) static void mvneta_rxq_desc_num_update(struct mvneta_port *pp,
           struct mvneta_rx_queue *rxq,
           int rx_done, int rx_filled)
{
 u32 val;

 if ((rx_done <= 0xff) && (rx_filled <= 0xff)) {
  val = rx_done |
    (rx_filled << MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT);
  mvreg_write(pp, MVNETA_RXQ_STATUS_UPDATE_REG(rxq->id), val);
  return;
 }


 while ((rx_done > 0) || (rx_filled > 0)) {
  if (rx_done <= 0xff) {
   val = rx_done;
   rx_done = 0;
  } else {
   val = 0xff;
   rx_done -= 0xff;
  }
  if (rx_filled <= 0xff) {
   val |= rx_filled << MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT;
   rx_filled = 0;
  } else {
   val |= 0xff << MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT;
   rx_filled -= 0xff;
  }
  mvreg_write(pp, MVNETA_RXQ_STATUS_UPDATE_REG(rxq->id), val);
 }
}
