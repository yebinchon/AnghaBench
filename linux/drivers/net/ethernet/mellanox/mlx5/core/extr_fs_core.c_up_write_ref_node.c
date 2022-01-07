
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_node {int lock; int refcount; } ;


 int refcount_dec (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void up_write_ref_node(struct fs_node *node, bool locked)
{
 refcount_dec(&node->refcount);
 if (!locked)
  up_write(&node->lock);
}
