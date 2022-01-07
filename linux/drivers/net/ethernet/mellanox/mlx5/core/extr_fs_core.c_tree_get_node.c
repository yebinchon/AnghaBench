
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_node {int refcount; } ;


 int refcount_inc_not_zero (int *) ;

__attribute__((used)) static int tree_get_node(struct fs_node *node)
{
 return refcount_inc_not_zero(&node->refcount);
}
