
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cxl {TYPE_1__* native; int irq_name; } ;
struct TYPE_4__ {int (* release_one_irq ) (struct cxl*,int ) ;} ;
struct TYPE_3__ {scalar_t__ err_virq; int err_hwirq; } ;


 int CXL_PSL_ErrIVTE ;
 TYPE_2__* cxl_ops ;
 int cxl_p1_write (struct cxl*,int ,int) ;
 int cxl_unmap_irq (scalar_t__,struct cxl*) ;
 scalar_t__ irq_find_mapping (int *,int ) ;
 int kfree (int ) ;
 int stub1 (struct cxl*,int ) ;

void cxl_native_release_psl_err_irq(struct cxl *adapter)
{
 if (adapter->native->err_virq == 0 ||
     adapter->native->err_virq !=
     irq_find_mapping(((void*)0), adapter->native->err_hwirq))
  return;

 cxl_p1_write(adapter, CXL_PSL_ErrIVTE, 0x0000000000000000);
 cxl_unmap_irq(adapter->native->err_virq, adapter);
 cxl_ops->release_one_irq(adapter, adapter->native->err_hwirq);
 kfree(adapter->irq_name);
 adapter->native->err_virq = 0;
}
