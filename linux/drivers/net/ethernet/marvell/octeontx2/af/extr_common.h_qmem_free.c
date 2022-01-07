
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmem {scalar_t__ align; scalar_t__ iova; scalar_t__ base; int alloc_sz; } ;
struct device {int dummy; } ;


 int devm_kfree (struct device*,struct qmem*) ;
 int dma_free_coherent (struct device*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void qmem_free(struct device *dev, struct qmem *qmem)
{
 if (!qmem)
  return;

 if (qmem->base)
  dma_free_coherent(dev, qmem->alloc_sz,
      qmem->base - qmem->align,
      qmem->iova - qmem->align);
 devm_kfree(dev, qmem);
}
