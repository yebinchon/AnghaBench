
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_tx_queue {int id; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_TXQ_SENT_THRESH_ALL_MASK ;
 int MVNETA_TXQ_SENT_THRESH_MASK (int ) ;
 int MVNETA_TXQ_SIZE_REG (int ) ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;

__attribute__((used)) static void mvneta_tx_done_pkts_coal_set(struct mvneta_port *pp,
      struct mvneta_tx_queue *txq, u32 value)
{
 u32 val;

 val = mvreg_read(pp, MVNETA_TXQ_SIZE_REG(txq->id));

 val &= ~MVNETA_TXQ_SENT_THRESH_ALL_MASK;
 val |= MVNETA_TXQ_SENT_THRESH_MASK(value);

 mvreg_write(pp, MVNETA_TXQ_SIZE_REG(txq->id), val);
}
