
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swap_eb {struct rb_root* root; } ;
struct rb_root {int dummy; } ;
struct mtdswap_dev {TYPE_1__* trees; } ;
struct TYPE_2__ {int count; struct rb_root root; } ;


 int __mtdswap_rb_add (struct rb_root*,struct swap_eb*) ;
 int mtdswap_eb_detach (struct mtdswap_dev*,struct swap_eb*) ;

__attribute__((used)) static void mtdswap_rb_add(struct mtdswap_dev *d, struct swap_eb *eb, int idx)
{
 struct rb_root *root;

 if (eb->root == &d->trees[idx].root)
  return;

 mtdswap_eb_detach(d, eb);
 root = &d->trees[idx].root;
 __mtdswap_rb_add(root, eb);
 eb->root = root;
 d->trees[idx].count++;
}
