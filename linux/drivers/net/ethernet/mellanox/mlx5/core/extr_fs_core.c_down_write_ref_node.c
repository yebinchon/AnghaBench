
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_node {int refcount; int lock; } ;


 int down_write (int *) ;
 int refcount_inc (int *) ;

__attribute__((used)) static void down_write_ref_node(struct fs_node *node, bool locked)
{
 if (node) {
  if (!locked)
   down_write(&node->lock);
  refcount_inc(&node->refcount);
 }
}
