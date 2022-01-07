
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdswap_dev {int dummy; } ;


 int CLEAN ;
 int DIRTY ;
 int FAILING ;
 int MTDSWAP_CLEAN ;
 int MTDSWAP_FAILING ;
 scalar_t__ TREE_EMPTY (struct mtdswap_dev*,int ) ;
 scalar_t__ TREE_NONEMPTY (struct mtdswap_dev*,int ) ;
 int __mtdswap_choose_gc_tree (struct mtdswap_dev*) ;
 int mtdswap_choose_wl_tree (struct mtdswap_dev*) ;

__attribute__((used)) static int mtdswap_choose_gc_tree(struct mtdswap_dev *d,
    unsigned int background)
{
 int idx;

 if (TREE_NONEMPTY(d, FAILING) &&
  (background || (TREE_EMPTY(d, CLEAN) && TREE_EMPTY(d, DIRTY))))
  return MTDSWAP_FAILING;

 idx = mtdswap_choose_wl_tree(d);
 if (idx >= MTDSWAP_CLEAN)
  return idx;

 return __mtdswap_choose_gc_tree(d);
}
