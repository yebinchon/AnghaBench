
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {int err_irq_name; int serr_hwirq; int adapter; int serr_virq; } ;
struct TYPE_2__ {int (* release_one_irq ) (int ,int ) ;} ;


 TYPE_1__* cxl_ops ;
 int cxl_unmap_irq (int ,struct cxl_afu*) ;
 int kfree (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void guest_release_serr_irq(struct cxl_afu *afu)
{
 cxl_unmap_irq(afu->serr_virq, afu);
 cxl_ops->release_one_irq(afu->adapter, afu->serr_hwirq);
 kfree(afu->err_irq_name);
}
