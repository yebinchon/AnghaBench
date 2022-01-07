
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_tx_queue {int count; } ;
struct mvpp2_port {int priv; } ;


 int ENOMEM ;
 int MVPP2_AGGR_TXQ_PENDING_MASK ;
 int MVPP2_AGGR_TXQ_SIZE ;
 int MVPP2_AGGR_TXQ_STATUS_REG (unsigned int) ;
 unsigned int mvpp2_cpu_to_thread (int ,int ) ;
 int mvpp2_read_relaxed (int ,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static int mvpp2_aggr_desc_num_check(struct mvpp2_port *port,
         struct mvpp2_tx_queue *aggr_txq, int num)
{
 if ((aggr_txq->count + num) > MVPP2_AGGR_TXQ_SIZE) {

  unsigned int thread =
   mvpp2_cpu_to_thread(port->priv, smp_processor_id());
  u32 val = mvpp2_read_relaxed(port->priv,
          MVPP2_AGGR_TXQ_STATUS_REG(thread));

  aggr_txq->count = val & MVPP2_AGGR_TXQ_PENDING_MASK;

  if ((aggr_txq->count + num) > MVPP2_AGGR_TXQ_SIZE)
   return -ENOMEM;
 }
 return 0;
}
