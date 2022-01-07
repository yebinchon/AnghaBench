
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_tx_queue {int id; } ;
struct mvpp2_port {int priv; } ;


 int MVPP2_TRANSMITTED_COUNT_MASK ;
 int MVPP2_TRANSMITTED_COUNT_OFFSET ;
 int MVPP2_TXQ_SENT_REG (int ) ;
 int mvpp2_cpu_to_thread (int ,int ) ;
 int mvpp2_thread_read_relaxed (int ,int ,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static inline int mvpp2_txq_sent_desc_proc(struct mvpp2_port *port,
        struct mvpp2_tx_queue *txq)
{
 u32 val;


 val = mvpp2_thread_read_relaxed(port->priv,
     mvpp2_cpu_to_thread(port->priv, smp_processor_id()),
     MVPP2_TXQ_SENT_REG(txq->id));

 return (val & MVPP2_TRANSMITTED_COUNT_MASK) >>
  MVPP2_TRANSMITTED_COUNT_OFFSET;
}
