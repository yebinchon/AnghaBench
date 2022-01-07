
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int debug_dir; } ;


 int debugfs_remove_recursive (int ) ;

void carl9170_debugfs_unregister(struct ar9170 *ar)
{
 debugfs_remove_recursive(ar->debug_dir);
}
