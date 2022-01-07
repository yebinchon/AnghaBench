
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_node {int dummy; } ;


 int kfree (struct fs_node*) ;

__attribute__((used)) static void del_sw_prio(struct fs_node *node)
{
 kfree(node);
}
