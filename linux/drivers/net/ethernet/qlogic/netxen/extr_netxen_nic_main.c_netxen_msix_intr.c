
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_host_sds_ring {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t netxen_msix_intr(int irq, void *data)
{
 struct nx_host_sds_ring *sds_ring = data;

 napi_schedule(&sds_ring->napi);
 return IRQ_HANDLED;
}
