
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocxl_link {int irq_available; } ;


 int ENOSPC ;
 scalar_t__ atomic_dec_if_positive (int *) ;
 int atomic_inc (int *) ;
 int pnv_ocxl_alloc_xive_irq (int*,int *) ;

int ocxl_link_irq_alloc(void *link_handle, int *hw_irq, u64 *trigger_addr)
{
 struct ocxl_link *link = (struct ocxl_link *) link_handle;
 int rc, irq;
 u64 addr;

 if (atomic_dec_if_positive(&link->irq_available) < 0)
  return -ENOSPC;

 rc = pnv_ocxl_alloc_xive_irq(&irq, &addr);
 if (rc) {
  atomic_inc(&link->irq_available);
  return rc;
 }

 *hw_irq = irq;
 *trigger_addr = addr;
 return 0;
}
