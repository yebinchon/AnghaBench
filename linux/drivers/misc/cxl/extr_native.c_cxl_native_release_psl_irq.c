
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cxl_afu {TYPE_1__* native; int psl_irq_name; int adapter; } ;
struct TYPE_4__ {int (* release_one_irq ) (int ,int ) ;} ;
struct TYPE_3__ {scalar_t__ psl_virq; int psl_hwirq; } ;


 TYPE_2__* cxl_ops ;
 int cxl_unmap_irq (scalar_t__,struct cxl_afu*) ;
 scalar_t__ irq_find_mapping (int *,int ) ;
 int kfree (int ) ;
 int stub1 (int ,int ) ;

void cxl_native_release_psl_irq(struct cxl_afu *afu)
{
 if (afu->native->psl_virq == 0 ||
     afu->native->psl_virq !=
     irq_find_mapping(((void*)0), afu->native->psl_hwirq))
  return;

 cxl_unmap_irq(afu->native->psl_virq, afu);
 cxl_ops->release_one_irq(afu->adapter, afu->native->psl_hwirq);
 kfree(afu->psl_irq_name);
 afu->native->psl_virq = 0;
}
