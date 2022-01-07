
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int bt_tx_prio; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EINVAL ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static ssize_t
iwl_dbgfs_bt_tx_prio_write(struct iwl_mvm *mvm, char *buf,
      size_t count, loff_t *ppos)
{
 u32 bt_tx_prio;

 if (sscanf(buf, "%u", &bt_tx_prio) != 1)
  return -EINVAL;
 if (bt_tx_prio > 4)
  return -EINVAL;

 mvm->bt_tx_prio = bt_tx_prio;

 return count;
}
