
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_avail {int range; int offset; int bitmap; } ;
struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int irq_nranges; struct irq_avail* irq_avail; } ;


 int ENOSPC ;
 int bitmap_find_next_zero_area (int ,int,int ,int,int ) ;
 int bitmap_set (int ,int,int) ;
 int pr_devel (char*,int,int) ;

__attribute__((used)) static int irq_alloc_range(struct cxl *adapter, int len, int *irq)
{
 int i, n;
 struct irq_avail *cur;

 for (i = 0; i < adapter->guest->irq_nranges; i++) {
  cur = &adapter->guest->irq_avail[i];
  n = bitmap_find_next_zero_area(cur->bitmap, cur->range,
     0, len, 0);
  if (n < cur->range) {
   bitmap_set(cur->bitmap, n, len);
   *irq = cur->offset + n;
   pr_devel("guest: allocate IRQs %#x->%#x\n",
    *irq, *irq + len - 1);

   return 0;
  }
 }
 return -ENOSPC;
}
