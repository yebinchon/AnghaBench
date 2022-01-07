
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debugfs_create_dir (char*,int *) ;
 scalar_t__ lbs_dir ;

void lbs_debugfs_init(void)
{
 if (!lbs_dir)
  lbs_dir = debugfs_create_dir("lbs_wireless", ((void*)0));
}
