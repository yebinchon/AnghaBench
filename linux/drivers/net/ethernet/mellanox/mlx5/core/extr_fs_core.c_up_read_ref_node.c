
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_node {int lock; int refcount; } ;


 int refcount_dec (int *) ;
 int up_read (int *) ;

__attribute__((used)) static void up_read_ref_node(struct fs_node *node)
{
 refcount_dec(&node->refcount);
 up_read(&node->lock);
}
