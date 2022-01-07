
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_host_sds_ring {int napi; struct netxen_adapter* adapter; } ;
struct netxen_adapter {int tgt_status_reg; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule (int *) ;
 int writel (int,int ) ;

__attribute__((used)) static irqreturn_t netxen_msi_intr(int irq, void *data)
{
 struct nx_host_sds_ring *sds_ring = data;
 struct netxen_adapter *adapter = sds_ring->adapter;


 writel(0xffffffff, adapter->tgt_status_reg);

 napi_schedule(&sds_ring->napi);
 return IRQ_HANDLED;
}
