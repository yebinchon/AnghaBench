
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_tx_queue {int dummy; } ;
struct mvneta_port {int dummy; } ;


 int mvneta_txq_sent_desc_dec (struct mvneta_port*,struct mvneta_tx_queue*,int) ;
 int mvneta_txq_sent_desc_num_get (struct mvneta_port*,struct mvneta_tx_queue*) ;

__attribute__((used)) static int mvneta_txq_sent_desc_proc(struct mvneta_port *pp,
         struct mvneta_tx_queue *txq)
{
 int sent_desc;


 sent_desc = mvneta_txq_sent_desc_num_get(pp, txq);


 if (sent_desc)
  mvneta_txq_sent_desc_dec(pp, txq, sent_desc);

 return sent_desc;
}
