
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans {int dummy; } ;
struct TYPE_3__ {int log_event_table; } ;
struct iwl_priv {scalar_t__ cur_ucode; TYPE_2__* fw; TYPE_1__ device_pointers; struct iwl_trans* trans; } ;
struct TYPE_4__ {int init_evtlog_size; int init_evtlog_ptr; int inst_evtlog_size; int inst_evtlog_ptr; } ;


 int DEFAULT_DUMP_EVENT_LOG_ENTRIES ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IWL_DL_FW ;
 int IWL_ERR (struct iwl_priv*,char*,...) ;
 scalar_t__ IWL_UCODE_INIT ;
 scalar_t__ iwl_have_debug_level (int ) ;
 int iwl_print_event_log (struct iwl_priv*,int,int,int,int,char**,size_t) ;
 int iwl_print_last_event_logs (struct iwl_priv*,int,int,int,int,int,int,char**,size_t) ;
 int iwl_trans_read_mem32 (struct iwl_trans*,int) ;
 int iwlagn_hw_valid_rtc_data_addr (int) ;
 char* kmalloc (size_t,int ) ;

int iwl_dump_nic_event_log(struct iwl_priv *priv, bool full_log,
       char **buf)
{
 u32 base;
 u32 capacity;
 u32 mode;
 u32 num_wraps;
 u32 next_entry;
 u32 size;
 u32 logsize;
 int pos = 0;
 size_t bufsz = 0;
 struct iwl_trans *trans = priv->trans;

 base = priv->device_pointers.log_event_table;
 if (priv->cur_ucode == IWL_UCODE_INIT) {
  logsize = priv->fw->init_evtlog_size;
  if (!base)
   base = priv->fw->init_evtlog_ptr;
 } else {
  logsize = priv->fw->inst_evtlog_size;
  if (!base)
   base = priv->fw->inst_evtlog_ptr;
 }

 if (!iwlagn_hw_valid_rtc_data_addr(base)) {
  IWL_ERR(priv,
   "Invalid event log pointer 0x%08X for %s uCode\n",
   base,
   (priv->cur_ucode == IWL_UCODE_INIT)
     ? "Init" : "RT");
  return -EINVAL;
 }


 capacity = iwl_trans_read_mem32(trans, base);
 mode = iwl_trans_read_mem32(trans, base + (1 * sizeof(u32)));
 num_wraps = iwl_trans_read_mem32(trans, base + (2 * sizeof(u32)));
 next_entry = iwl_trans_read_mem32(trans, base + (3 * sizeof(u32)));

 if (capacity > logsize) {
  IWL_ERR(priv, "Log capacity %d is bogus, limit to %d "
   "entries\n", capacity, logsize);
  capacity = logsize;
 }

 if (next_entry > logsize) {
  IWL_ERR(priv, "Log write index %d is bogus, limit to %d\n",
   next_entry, logsize);
  next_entry = logsize;
 }

 size = num_wraps ? capacity : next_entry;


 if (size == 0) {
  IWL_ERR(trans, "Start IWL Event Log Dump: nothing in log\n");
  return pos;
 }

 if (!(iwl_have_debug_level(IWL_DL_FW)) && !full_log)
  size = (size > DEFAULT_DUMP_EVENT_LOG_ENTRIES)
   ? DEFAULT_DUMP_EVENT_LOG_ENTRIES : size;
 IWL_ERR(priv, "Start IWL Event Log Dump: display last %u entries\n",
  size);
 pos = iwl_print_last_event_logs(priv, capacity, num_wraps,
     next_entry, size, mode,
     pos, buf, bufsz);

 return pos;
}
