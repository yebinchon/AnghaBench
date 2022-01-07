
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_node {int refcount; int lock; } ;
typedef enum fs_i_lock_class { ____Placeholder_fs_i_lock_class } fs_i_lock_class ;


 int down_read_nested (int *,int) ;
 int refcount_inc (int *) ;

__attribute__((used)) static void nested_down_read_ref_node(struct fs_node *node,
          enum fs_i_lock_class class)
{
 if (node) {
  down_read_nested(&node->lock, class);
  refcount_inc(&node->refcount);
 }
}
