
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int *) ;
 int * nfp_dir ;

void nfp_net_debugfs_destroy(void)
{
 debugfs_remove_recursive(nfp_dir);
 nfp_dir = ((void*)0);
}
