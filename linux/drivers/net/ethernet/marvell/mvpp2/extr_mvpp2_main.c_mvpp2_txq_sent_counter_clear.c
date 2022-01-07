
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mvpp2_port {int ntxqs; TYPE_2__* priv; TYPE_1__** txqs; } ;
struct TYPE_5__ {scalar_t__ nthreads; } ;
struct TYPE_4__ {int id; } ;


 int MVPP2_TXQ_SENT_REG (int) ;
 int mvpp2_cpu_to_thread (TYPE_2__*,scalar_t__) ;
 int mvpp2_thread_read (TYPE_2__*,int ,int ) ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static void mvpp2_txq_sent_counter_clear(void *arg)
{
 struct mvpp2_port *port = arg;
 int queue;


 if (smp_processor_id() > port->priv->nthreads)
  return;

 for (queue = 0; queue < port->ntxqs; queue++) {
  int id = port->txqs[queue]->id;

  mvpp2_thread_read(port->priv,
      mvpp2_cpu_to_thread(port->priv, smp_processor_id()),
      MVPP2_TXQ_SENT_REG(id));
 }
}
