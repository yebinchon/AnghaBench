
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_port {int priv; } ;


 int MVPP2_AGGR_TXQ_UPDATE_REG ;
 int mvpp2_cpu_to_thread (int ,int ) ;
 int mvpp2_thread_write (int ,int ,int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void mvpp2_aggr_txq_pend_desc_add(struct mvpp2_port *port, int pending)
{

 mvpp2_thread_write(port->priv,
      mvpp2_cpu_to_thread(port->priv, smp_processor_id()),
      MVPP2_AGGR_TXQ_UPDATE_REG, pending);
}
