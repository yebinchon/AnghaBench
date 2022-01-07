
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_queue_vector {int sw_thread_mask; struct mvpp2_port* port; } ;
struct mvpp2_port {int id; int priv; } ;


 int MVPP2_ISR_ENABLE_INTERRUPT (int ) ;
 int MVPP2_ISR_ENABLE_REG (int ) ;
 int mvpp2_write (int ,int ,int ) ;

__attribute__((used)) static inline void mvpp2_qvec_interrupt_enable(struct mvpp2_queue_vector *qvec)
{
 struct mvpp2_port *port = qvec->port;

 mvpp2_write(port->priv, MVPP2_ISR_ENABLE_REG(port->id),
      MVPP2_ISR_ENABLE_INTERRUPT(qvec->sw_thread_mask));
}
