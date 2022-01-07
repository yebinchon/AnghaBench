
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_avail {int irq_nranges; struct irq_avail* guest; struct irq_avail* status; struct irq_avail* irq_avail; struct irq_avail* bitmap; } ;
struct cxl {int irq_nranges; struct cxl* guest; struct cxl* status; struct cxl* irq_avail; struct cxl* bitmap; } ;


 int cxl_remove_adapter_nr (struct irq_avail*) ;
 int kfree (struct irq_avail*) ;

__attribute__((used)) static void free_adapter(struct cxl *adapter)
{
 struct irq_avail *cur;
 int i;

 if (adapter->guest) {
  if (adapter->guest->irq_avail) {
   for (i = 0; i < adapter->guest->irq_nranges; i++) {
    cur = &adapter->guest->irq_avail[i];
    kfree(cur->bitmap);
   }
   kfree(adapter->guest->irq_avail);
  }
  kfree(adapter->guest->status);
  kfree(adapter->guest);
 }
 cxl_remove_adapter_nr(adapter);
 kfree(adapter);
}
