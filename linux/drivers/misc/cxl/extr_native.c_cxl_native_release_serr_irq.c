
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {scalar_t__ serr_virq; int err_irq_name; int serr_hwirq; int adapter; } ;
struct TYPE_2__ {int (* release_one_irq ) (int ,int ) ;} ;


 int CXL_PSL_SERR_An ;
 TYPE_1__* cxl_ops ;
 int cxl_p1n_write (struct cxl_afu*,int ,int) ;
 int cxl_unmap_irq (scalar_t__,struct cxl_afu*) ;
 scalar_t__ irq_find_mapping (int *,int ) ;
 int kfree (int ) ;
 int stub1 (int ,int ) ;

void cxl_native_release_serr_irq(struct cxl_afu *afu)
{
 if (afu->serr_virq == 0 ||
     afu->serr_virq != irq_find_mapping(((void*)0), afu->serr_hwirq))
  return;

 cxl_p1n_write(afu, CXL_PSL_SERR_An, 0x0000000000000000);
 cxl_unmap_irq(afu->serr_virq, afu);
 cxl_ops->release_one_irq(afu->adapter, afu->serr_hwirq);
 kfree(afu->err_irq_name);
 afu->serr_virq = 0;
}
