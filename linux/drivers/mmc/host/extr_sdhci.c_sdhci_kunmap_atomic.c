
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kunmap_atomic (void*) ;
 int local_irq_restore (unsigned long) ;

__attribute__((used)) static void sdhci_kunmap_atomic(void *buffer, unsigned long *flags)
{
 kunmap_atomic(buffer);
 local_irq_restore(*flags);
}
