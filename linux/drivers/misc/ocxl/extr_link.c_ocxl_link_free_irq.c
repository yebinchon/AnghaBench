
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_link {int irq_available; } ;


 int atomic_inc (int *) ;
 int pnv_ocxl_free_xive_irq (int) ;

void ocxl_link_free_irq(void *link_handle, int hw_irq)
{
 struct ocxl_link *link = (struct ocxl_link *) link_handle;

 pnv_ocxl_free_xive_irq(hw_irq);
 atomic_inc(&link->irq_available);
}
