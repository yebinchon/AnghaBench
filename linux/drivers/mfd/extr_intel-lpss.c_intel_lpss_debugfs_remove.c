
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lpss {int debugfs; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void intel_lpss_debugfs_remove(struct intel_lpss *lpss)
{
 debugfs_remove_recursive(lpss->debugfs);
}
