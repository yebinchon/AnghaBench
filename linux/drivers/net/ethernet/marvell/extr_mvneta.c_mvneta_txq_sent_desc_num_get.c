
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_tx_queue {int id; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_TXQ_SENT_DESC_MASK ;
 int MVNETA_TXQ_SENT_DESC_SHIFT ;
 int MVNETA_TXQ_STATUS_REG (int ) ;
 int mvreg_read (struct mvneta_port*,int ) ;

__attribute__((used)) static int mvneta_txq_sent_desc_num_get(struct mvneta_port *pp,
     struct mvneta_tx_queue *txq)
{
 u32 val;
 int sent_desc;

 val = mvreg_read(pp, MVNETA_TXQ_STATUS_REG(txq->id));
 sent_desc = (val & MVNETA_TXQ_SENT_DESC_MASK) >>
  MVNETA_TXQ_SENT_DESC_SHIFT;

 return sent_desc;
}
