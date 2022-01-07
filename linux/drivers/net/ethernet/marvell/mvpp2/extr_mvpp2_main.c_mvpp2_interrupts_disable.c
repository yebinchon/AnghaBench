
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_port {int nqvecs; int id; int priv; TYPE_1__* qvecs; } ;
struct TYPE_2__ {int sw_thread_mask; } ;


 int MVPP2_ISR_DISABLE_INTERRUPT (int) ;
 int MVPP2_ISR_ENABLE_REG (int ) ;
 int mvpp2_write (int ,int ,int ) ;

__attribute__((used)) static inline void mvpp2_interrupts_disable(struct mvpp2_port *port)
{
 int i, sw_thread_mask = 0;

 for (i = 0; i < port->nqvecs; i++)
  sw_thread_mask |= port->qvecs[i].sw_thread_mask;

 mvpp2_write(port->priv, MVPP2_ISR_ENABLE_REG(port->id),
      MVPP2_ISR_DISABLE_INTERRUPT(sw_thread_mask));
}
