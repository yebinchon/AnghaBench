
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nx_host_sds_ring {int napi; struct netxen_adapter* adapter; } ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {int int_vec_bit; int isr_int_vec; int tgt_status_reg; int crb_int_state_reg; scalar_t__ portnum; TYPE_1__ ahw; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR_LEGACY_INT_TRIGGERED (int) ;
 scalar_t__ NX_IS_REVISION_P3 (int ) ;
 int napi_schedule (int *) ;
 int netxen_nic_disable_int (struct nx_host_sds_ring*) ;
 void* readl (int ) ;
 int test_and_clear_bit (scalar_t__,unsigned long*) ;
 int writel (int,int ) ;

__attribute__((used)) static irqreturn_t netxen_intr(int irq, void *data)
{
 struct nx_host_sds_ring *sds_ring = data;
 struct netxen_adapter *adapter = sds_ring->adapter;
 u32 status = 0;

 status = readl(adapter->isr_int_vec);

 if (!(status & adapter->int_vec_bit))
  return IRQ_NONE;

 if (NX_IS_REVISION_P3(adapter->ahw.revision_id)) {

  status = readl(adapter->crb_int_state_reg);
  if (!ISR_LEGACY_INT_TRIGGERED(status))
   return IRQ_NONE;

 } else {
  unsigned long our_int = 0;

  our_int = readl(adapter->crb_int_state_reg);


  if (!test_and_clear_bit((7 + adapter->portnum), &our_int))
   return IRQ_NONE;


  writel((our_int & 0xffffffff), adapter->crb_int_state_reg);


  netxen_nic_disable_int(sds_ring);
 }

 writel(0xffffffff, adapter->tgt_status_reg);

 readl(adapter->isr_int_vec);
 readl(adapter->isr_int_vec);

 napi_schedule(&sds_ring->napi);

 return IRQ_HANDLED;
}
