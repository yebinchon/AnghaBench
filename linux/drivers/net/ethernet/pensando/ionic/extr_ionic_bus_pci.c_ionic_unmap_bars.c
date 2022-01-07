
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_dev_bar {scalar_t__ len; int * vaddr; scalar_t__ bus_addr; } ;
struct ionic {struct ionic_dev_bar* bars; } ;


 unsigned int IONIC_BARS_MAX ;
 int iounmap (int *) ;

__attribute__((used)) static void ionic_unmap_bars(struct ionic *ionic)
{
 struct ionic_dev_bar *bars = ionic->bars;
 unsigned int i;

 for (i = 0; i < IONIC_BARS_MAX; i++) {
  if (bars[i].vaddr) {
   iounmap(bars[i].vaddr);
   bars[i].bus_addr = 0;
   bars[i].vaddr = ((void*)0);
   bars[i].len = 0;
  }
 }
}
