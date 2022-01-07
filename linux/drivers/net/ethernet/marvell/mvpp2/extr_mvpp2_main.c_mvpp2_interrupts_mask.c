
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mvpp2_port {int id; TYPE_1__* priv; } ;
struct TYPE_3__ {scalar_t__ nthreads; } ;


 int MVPP2_ISR_RX_TX_MASK_REG (int ) ;
 int mvpp2_cpu_to_thread (TYPE_1__*,scalar_t__) ;
 int mvpp2_thread_write (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static void mvpp2_interrupts_mask(void *arg)
{
 struct mvpp2_port *port = arg;


 if (smp_processor_id() > port->priv->nthreads)
  return;

 mvpp2_thread_write(port->priv,
      mvpp2_cpu_to_thread(port->priv, smp_processor_id()),
      MVPP2_ISR_RX_TX_MASK_REG(port->id), 0);
}
