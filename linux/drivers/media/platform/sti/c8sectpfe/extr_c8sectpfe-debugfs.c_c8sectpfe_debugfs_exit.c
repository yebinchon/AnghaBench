
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c8sectpfei {int * root; } ;


 int debugfs_remove_recursive (int *) ;

void c8sectpfe_debugfs_exit(struct c8sectpfei *fei)
{
 debugfs_remove_recursive(fei->root);
 fei->root = ((void*)0);
}
