
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int beacon_inject_active; TYPE_1__* hw; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {scalar_t__ extra_beacon_tailroom; } ;


 int _iwl_dbgfs_inject_beacon_ie (struct iwl_mvm*,int *,int ) ;

__attribute__((used)) static ssize_t iwl_dbgfs_inject_beacon_ie_restore_write(struct iwl_mvm *mvm,
       char *buf,
       size_t count,
       loff_t *ppos)
{
 int ret = _iwl_dbgfs_inject_beacon_ie(mvm, ((void*)0), 0);

 mvm->hw->extra_beacon_tailroom = 0;
 mvm->beacon_inject_active = 0;
 return ret ?: count;
}
