
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtdswap_dev {TYPE_2__* trees; } ;
struct TYPE_3__ {int * rb_node; } ;
struct TYPE_4__ {TYPE_1__ root; } ;


 int CLEAN ;
 scalar_t__ LOW_FRAG_GC_THRESHOLD ;
 int MTDSWAP_BITFLIP ;
 int MTDSWAP_HIFRAG ;
 int MTDSWAP_LOWFRAG ;
 scalar_t__ TREE_COUNT (struct mtdswap_dev*,int ) ;

__attribute__((used)) static int __mtdswap_choose_gc_tree(struct mtdswap_dev *d)
{
 int idx, stopat;

 if (TREE_COUNT(d, CLEAN) < LOW_FRAG_GC_THRESHOLD)
  stopat = MTDSWAP_LOWFRAG;
 else
  stopat = MTDSWAP_HIFRAG;

 for (idx = MTDSWAP_BITFLIP; idx >= stopat; idx--)
  if (d->trees[idx].root.rb_node != ((void*)0))
   return idx;

 return -1;
}
