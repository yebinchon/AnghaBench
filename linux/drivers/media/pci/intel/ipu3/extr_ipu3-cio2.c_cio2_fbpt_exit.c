
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cio2_queue {int fbpt_bus_addr; int fbpt; } ;


 int CIO2_FBPT_SIZE ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;

__attribute__((used)) static void cio2_fbpt_exit(struct cio2_queue *q, struct device *dev)
{
 dma_free_coherent(dev, CIO2_FBPT_SIZE, q->fbpt, q->fbpt_bus_addr);
}
