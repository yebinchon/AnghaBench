
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_avail {int offset; int range; int bitmap; } ;
struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int irq_nranges; struct irq_avail* irq_avail; } ;


 int ENOENT ;
 int bitmap_clear (int ,int,int) ;
 int pr_devel (char*,int,int) ;

__attribute__((used)) static int irq_free_range(struct cxl *adapter, int irq, int len)
{
 int i, n;
 struct irq_avail *cur;

 if (len == 0)
  return -ENOENT;

 for (i = 0; i < adapter->guest->irq_nranges; i++) {
  cur = &adapter->guest->irq_avail[i];
  if (irq >= cur->offset &&
   (irq + len) <= (cur->offset + cur->range)) {
   n = irq - cur->offset;
   bitmap_clear(cur->bitmap, n, len);
   pr_devel("guest: release IRQs %#x->%#x\n",
    irq, irq + len - 1);
   return 0;
  }
 }
 return -ENOENT;
}
