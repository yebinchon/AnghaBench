
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_node {struct fs_node* root; struct fs_node* parent; int refcount; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void tree_add_node(struct fs_node *node, struct fs_node *parent)
{
 if (parent)
  refcount_inc(&parent->refcount);
 node->parent = parent;


 if (!parent)
  node->root = node;
 else
  node->root = parent->root;
}
