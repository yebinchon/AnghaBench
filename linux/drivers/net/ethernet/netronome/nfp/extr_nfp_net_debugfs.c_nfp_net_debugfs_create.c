
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int *) ;
 int nfp_dir ;

void nfp_net_debugfs_create(void)
{
 nfp_dir = debugfs_create_dir("nfp_net", ((void*)0));
}
