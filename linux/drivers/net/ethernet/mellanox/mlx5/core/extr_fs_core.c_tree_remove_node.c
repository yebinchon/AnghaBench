
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_node {int refcount; } ;


 int EEXIST ;
 int refcount_dec (int *) ;
 int refcount_read (int *) ;
 int tree_put_node (struct fs_node*,int) ;

__attribute__((used)) static int tree_remove_node(struct fs_node *node, bool locked)
{
 if (refcount_read(&node->refcount) > 1) {
  refcount_dec(&node->refcount);
  return -EEXIST;
 }
 tree_put_node(node, locked);
 return 0;
}
