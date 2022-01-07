
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (int ) ;
 int lbs_dir ;

void lbs_debugfs_remove(void)
{
 debugfs_remove(lbs_dir);
}
