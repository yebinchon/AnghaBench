
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cxl_afu {TYPE_1__* adapter; int configured_state; } ;
struct TYPE_6__ {TYPE_2__* sl_ops; } ;
struct TYPE_5__ {int (* release_serr_irq ) (struct cxl_afu*) ;} ;
struct TYPE_4__ {TYPE_3__* native; } ;


 int atomic_cmpxchg (int *,int ,int) ;
 int atomic_read (int *) ;
 int cxl_native_release_psl_irq (struct cxl_afu*) ;
 int pci_unmap_slice_regs (struct cxl_afu*) ;
 int schedule () ;
 int stub1 (struct cxl_afu*) ;

__attribute__((used)) static void pci_deconfigure_afu(struct cxl_afu *afu)
{




 if (atomic_read(&afu->configured_state) != -1) {
  while (atomic_cmpxchg(&afu->configured_state, 0, -1) != -1)
   schedule();
 }
 cxl_native_release_psl_irq(afu);
 if (afu->adapter->native->sl_ops->release_serr_irq)
  afu->adapter->native->sl_ops->release_serr_irq(afu);
 pci_unmap_slice_regs(afu);
}
