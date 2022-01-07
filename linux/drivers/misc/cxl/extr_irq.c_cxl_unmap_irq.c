
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_irq (unsigned int,void*) ;

void cxl_unmap_irq(unsigned int virq, void *cookie)
{
 free_irq(virq, cookie);
}
