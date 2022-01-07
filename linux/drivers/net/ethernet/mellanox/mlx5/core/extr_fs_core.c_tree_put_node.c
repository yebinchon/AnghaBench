
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_node {int (* del_sw_func ) (struct fs_node*) ;int list; int (* del_hw_func ) (struct fs_node*) ;int refcount; struct fs_node* parent; } ;


 int down_write_ref_node (struct fs_node*,int) ;
 int kfree (struct fs_node*) ;
 int list_del_init (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int stub1 (struct fs_node*) ;
 int stub2 (struct fs_node*) ;
 int up_write_ref_node (struct fs_node*,int) ;

__attribute__((used)) static void tree_put_node(struct fs_node *node, bool locked)
{
 struct fs_node *parent_node = node->parent;

 if (refcount_dec_and_test(&node->refcount)) {
  if (node->del_hw_func)
   node->del_hw_func(node);
  if (parent_node) {



   down_write_ref_node(parent_node, locked);
   list_del_init(&node->list);
   if (node->del_sw_func)
    node->del_sw_func(node);
   up_write_ref_node(parent_node, locked);
  } else {
   kfree(node);
  }
  node = ((void*)0);
 }
 if (!node && parent_node)
  tree_put_node(parent_node, locked);
}
