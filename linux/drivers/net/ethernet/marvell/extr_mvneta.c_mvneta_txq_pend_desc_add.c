
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mvneta_tx_queue {scalar_t__ pending; int id; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_TXQ_UPDATE_REG (int ) ;
 scalar_t__ min (int,int) ;
 int mvreg_write (struct mvneta_port*,int ,scalar_t__) ;

__attribute__((used)) static void mvneta_txq_pend_desc_add(struct mvneta_port *pp,
         struct mvneta_tx_queue *txq,
         int pend_desc)
{
 u32 val;

 pend_desc += txq->pending;


 do {
  val = min(pend_desc, 255);
  mvreg_write(pp, MVNETA_TXQ_UPDATE_REG(txq->id), val);
  pend_desc -= val;
 } while (pend_desc > 0);
 txq->pending = 0;
}
