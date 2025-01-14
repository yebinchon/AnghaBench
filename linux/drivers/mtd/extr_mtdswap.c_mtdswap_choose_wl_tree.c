
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_root {int * rb_node; } ;
struct mtdswap_dev {unsigned int max_erase_count; TYPE_1__* trees; } ;
struct TYPE_2__ {struct rb_root root; } ;


 unsigned int MAX_ERASE_DIFF ;
 unsigned int MTDSWAP_DIRTY ;
 unsigned int MTDSWAP_ECNT_MIN (struct rb_root*) ;
 int mtdswap_wlfreq (unsigned int) ;

__attribute__((used)) static int mtdswap_choose_wl_tree(struct mtdswap_dev *d)
{
 static unsigned int pick_cnt;
 unsigned int i, idx = -1, wear, max;
 struct rb_root *root;

 max = 0;
 for (i = 0; i <= MTDSWAP_DIRTY; i++) {
  root = &d->trees[i].root;
  if (root->rb_node == ((void*)0))
   continue;

  wear = d->max_erase_count - MTDSWAP_ECNT_MIN(root);
  if (wear > max) {
   max = wear;
   idx = i;
  }
 }

 if (max > MAX_ERASE_DIFF && pick_cnt >= mtdswap_wlfreq(max) - 1) {
  pick_cnt = 0;
  return idx;
 }

 pick_cnt++;
 return -1;
}
