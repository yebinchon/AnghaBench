
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int handle; } ;
struct tc_cls_u32_offload {TYPE_1__ knode; } ;
struct ixgbe_jump_table {int link_hdl; struct ixgbe_jump_table* mask; struct ixgbe_jump_table* input; int child_loc_map; } ;
struct ixgbe_adapter {int fdir_perfect_lock; struct ixgbe_jump_table** jump_tables; } ;


 int EINVAL ;
 int IXGBE_MAX_HW_ENTRIES ;
 int IXGBE_MAX_LINK_HANDLE ;
 int TC_U32_USERHTID (int) ;
 int clear_bit (int,int ) ;
 int ixgbe_update_ethtool_fdir_entry (struct ixgbe_adapter*,int *,int) ;
 int kfree (struct ixgbe_jump_table*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int ixgbe_delete_clsu32(struct ixgbe_adapter *adapter,
          struct tc_cls_u32_offload *cls)
{
 u32 hdl = cls->knode.handle;
 u32 uhtid = TC_U32_USERHTID(cls->knode.handle);
 u32 loc = cls->knode.handle & 0xfffff;
 int err = 0, i, j;
 struct ixgbe_jump_table *jump = ((void*)0);

 if (loc > IXGBE_MAX_HW_ENTRIES)
  return -EINVAL;

 if ((uhtid != 0x800) && (uhtid >= IXGBE_MAX_LINK_HANDLE))
  return -EINVAL;


 if (uhtid != 0x800) {
  jump = adapter->jump_tables[uhtid];
  if (!jump)
   return -EINVAL;
  if (!test_bit(loc - 1, jump->child_loc_map))
   return -EINVAL;
  clear_bit(loc - 1, jump->child_loc_map);
 }


 for (i = 1; i < IXGBE_MAX_LINK_HANDLE; i++) {
  jump = adapter->jump_tables[i];
  if (jump && jump->link_hdl == hdl) {



   for (j = 0; j < IXGBE_MAX_HW_ENTRIES; j++) {
    if (!test_bit(j, jump->child_loc_map))
     continue;
    spin_lock(&adapter->fdir_perfect_lock);
    err = ixgbe_update_ethtool_fdir_entry(adapter,
              ((void*)0),
              j + 1);
    spin_unlock(&adapter->fdir_perfect_lock);
    clear_bit(j, jump->child_loc_map);
   }

   kfree(jump->input);
   kfree(jump->mask);
   kfree(jump);
   adapter->jump_tables[i] = ((void*)0);
   return err;
  }
 }

 spin_lock(&adapter->fdir_perfect_lock);
 err = ixgbe_update_ethtool_fdir_entry(adapter, ((void*)0), loc);
 spin_unlock(&adapter->fdir_perfect_lock);
 return err;
}
