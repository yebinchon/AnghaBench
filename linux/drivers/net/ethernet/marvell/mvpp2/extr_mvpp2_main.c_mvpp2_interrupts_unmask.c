
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mvpp2_port {int id; TYPE_1__* priv; scalar_t__ has_tx_irqs; } ;
struct TYPE_3__ {scalar_t__ nthreads; int hw_version; } ;


 int MVPP2_CAUSE_MISC_SUM_MASK ;
 int MVPP2_CAUSE_RXQ_OCCUP_DESC_ALL_MASK (int ) ;
 int MVPP2_CAUSE_TXQ_OCCUP_DESC_ALL_MASK ;
 int MVPP2_ISR_RX_TX_MASK_REG (int ) ;
 int mvpp2_cpu_to_thread (TYPE_1__*,scalar_t__) ;
 int mvpp2_thread_write (TYPE_1__*,int ,int ,int) ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static void mvpp2_interrupts_unmask(void *arg)
{
 struct mvpp2_port *port = arg;
 u32 val;


 if (smp_processor_id() > port->priv->nthreads)
  return;

 val = MVPP2_CAUSE_MISC_SUM_MASK |
  MVPP2_CAUSE_RXQ_OCCUP_DESC_ALL_MASK(port->priv->hw_version);
 if (port->has_tx_irqs)
  val |= MVPP2_CAUSE_TXQ_OCCUP_DESC_ALL_MASK;

 mvpp2_thread_write(port->priv,
      mvpp2_cpu_to_thread(port->priv, smp_processor_id()),
      MVPP2_ISR_RX_TX_MASK_REG(port->id), val);
}
