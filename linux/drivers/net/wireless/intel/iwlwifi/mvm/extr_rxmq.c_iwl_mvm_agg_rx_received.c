
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct iwl_mvm_baid_data {unsigned long timeout; unsigned long last_rx; } ;
struct iwl_mvm {int * baid_map; } ;


 int IWL_DEBUG_RX (struct iwl_mvm*,char*,size_t,int ) ;
 scalar_t__ TU_TO_JIFFIES (unsigned long) ;
 unsigned long jiffies ;
 struct iwl_mvm_baid_data* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ time_before (scalar_t__,unsigned long) ;

__attribute__((used)) static void iwl_mvm_agg_rx_received(struct iwl_mvm *mvm,
        u32 reorder_data, u8 baid)
{
 unsigned long now = jiffies;
 unsigned long timeout;
 struct iwl_mvm_baid_data *data;

 rcu_read_lock();

 data = rcu_dereference(mvm->baid_map[baid]);
 if (!data) {
  IWL_DEBUG_RX(mvm,
        "Got valid BAID but no baid allocated, bypass the re-ordering buffer. Baid %d reorder 0x%x\n",
         baid, reorder_data);
  goto out;
 }

 if (!data->timeout)
  goto out;

 timeout = data->timeout;






 if (time_before(data->last_rx + TU_TO_JIFFIES(timeout), now))

  data->last_rx = now;

out:
 rcu_read_unlock();
}
