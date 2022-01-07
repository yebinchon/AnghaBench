
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int max_scans; int* scan_uid_status; } ;


 int ENOENT ;

__attribute__((used)) static int iwl_mvm_scan_uid_by_status(struct iwl_mvm *mvm, int status)
{
 int i;

 for (i = 0; i < mvm->max_scans; i++)
  if (mvm->scan_uid_status[i] == status)
   return i;

 return -ENOENT;
}
