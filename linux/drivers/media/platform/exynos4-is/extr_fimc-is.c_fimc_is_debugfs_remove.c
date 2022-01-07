
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {int * debugfs_entry; } ;


 int debugfs_remove_recursive (int *) ;

__attribute__((used)) static void fimc_is_debugfs_remove(struct fimc_is *is)
{
 debugfs_remove_recursive(is->debugfs_entry);
 is->debugfs_entry = ((void*)0);
}
