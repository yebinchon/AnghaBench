
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_tx_queue {int id; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_TXQ_DEC_SENT_SHIFT ;
 int MVNETA_TXQ_UPDATE_REG (int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;

__attribute__((used)) static void mvneta_txq_sent_desc_dec(struct mvneta_port *pp,
         struct mvneta_tx_queue *txq,
         int sent_desc)
{
 u32 val;


 while (sent_desc > 0xff) {
  val = 0xff << MVNETA_TXQ_DEC_SENT_SHIFT;
  mvreg_write(pp, MVNETA_TXQ_UPDATE_REG(txq->id), val);
  sent_desc = sent_desc - 0xff;
 }

 val = sent_desc << MVNETA_TXQ_DEC_SENT_SHIFT;
 mvreg_write(pp, MVNETA_TXQ_UPDATE_REG(txq->id), val);
}
