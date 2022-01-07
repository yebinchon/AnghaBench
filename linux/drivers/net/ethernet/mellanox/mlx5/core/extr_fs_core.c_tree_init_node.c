
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_node {void (* del_hw_func ) (struct fs_node*) ;void (* del_sw_func ) (struct fs_node*) ;int active; int lock; int children; int list; int refcount; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_rwsem (int *) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static void tree_init_node(struct fs_node *node,
      void (*del_hw_func)(struct fs_node *),
      void (*del_sw_func)(struct fs_node *))
{
 refcount_set(&node->refcount, 1);
 INIT_LIST_HEAD(&node->list);
 INIT_LIST_HEAD(&node->children);
 init_rwsem(&node->lock);
 node->del_hw_func = del_hw_func;
 node->del_sw_func = del_sw_func;
 node->active = 0;
}
