
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_eb {unsigned int active_count; int flags; } ;
struct mtdswap_dev {unsigned int pages_per_eblk; struct swap_eb* curr_write; } ;


 int EBLOCK_BITFLIP ;
 int EBLOCK_FAILED ;
 int EBLOCK_READERR ;
 int MTDSWAP_BITFLIP ;
 int MTDSWAP_DIRTY ;
 int MTDSWAP_FAILING ;
 int MTDSWAP_HIFRAG ;
 int MTDSWAP_LOWFRAG ;
 int MTDSWAP_USED ;
 int mtdswap_rb_add (struct mtdswap_dev*,struct swap_eb*,int ) ;

__attribute__((used)) static void mtdswap_store_eb(struct mtdswap_dev *d, struct swap_eb *eb)
{
 unsigned int weight = eb->active_count;
 unsigned int maxweight = d->pages_per_eblk;

 if (eb == d->curr_write)
  return;

 if (eb->flags & EBLOCK_BITFLIP)
  mtdswap_rb_add(d, eb, MTDSWAP_BITFLIP);
 else if (eb->flags & (EBLOCK_READERR | EBLOCK_FAILED))
  mtdswap_rb_add(d, eb, MTDSWAP_FAILING);
 if (weight == maxweight)
  mtdswap_rb_add(d, eb, MTDSWAP_USED);
 else if (weight == 0)
  mtdswap_rb_add(d, eb, MTDSWAP_DIRTY);
 else if (weight > (maxweight/2))
  mtdswap_rb_add(d, eb, MTDSWAP_LOWFRAG);
 else
  mtdswap_rb_add(d, eb, MTDSWAP_HIFRAG);
}
