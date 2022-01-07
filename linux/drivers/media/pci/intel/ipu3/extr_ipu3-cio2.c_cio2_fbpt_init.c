
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct cio2_queue {int fbpt; int fbpt_bus_addr; } ;
struct cio2_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {struct device dev; } ;


 int CIO2_FBPT_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (struct device*,int ,int *,int ) ;

__attribute__((used)) static int cio2_fbpt_init(struct cio2_device *cio2, struct cio2_queue *q)
{
 struct device *dev = &cio2->pci_dev->dev;

 q->fbpt = dma_alloc_coherent(dev, CIO2_FBPT_SIZE, &q->fbpt_bus_addr,
         GFP_KERNEL);
 if (!q->fbpt)
  return -ENOMEM;

 return 0;
}
