
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int paddr; int * vaddr; int size; } ;
struct fimc_is {TYPE_2__ memory; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int dma_free_coherent (struct device*,int ,int *,int ) ;

__attribute__((used)) static void fimc_is_free_cpu_memory(struct fimc_is *is)
{
 struct device *dev = &is->pdev->dev;

 if (is->memory.vaddr == ((void*)0))
  return;

 dma_free_coherent(dev, is->memory.size, is->memory.vaddr,
     is->memory.paddr);
}
