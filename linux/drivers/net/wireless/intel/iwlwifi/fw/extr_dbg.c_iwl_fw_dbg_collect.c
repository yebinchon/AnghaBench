
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct iwl_fw_runtime {int trans; } ;
struct TYPE_2__ {int data; int type; } ;
struct iwl_fw_dump_desc {size_t len; TYPE_1__ trig_desc; } ;
struct iwl_fw_dbg_trigger_tlv {int flags; int mode; int stop_delay; int occurrences; } ;
typedef enum iwl_fw_dbg_trigger { ____Placeholder_iwl_fw_dbg_trigger } iwl_fw_dbg_trigger ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int IWL_FW_DBG_FORCE_RESTART ;
 int IWL_FW_DBG_TRIGGER_MONITOR_ONLY ;
 int IWL_WARN (struct iwl_fw_runtime*,char*,int) ;
 unsigned int USEC_PER_MSEC ;
 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int) ;
 int iwl_force_nmi (int ) ;
 int iwl_fw_dbg_collect_desc (struct iwl_fw_runtime*,struct iwl_fw_dump_desc*,int,unsigned int) ;
 struct iwl_fw_dump_desc* kzalloc (int,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 int memcpy (int ,char const*,size_t) ;

int iwl_fw_dbg_collect(struct iwl_fw_runtime *fwrt,
         enum iwl_fw_dbg_trigger trig,
         const char *str, size_t len,
         struct iwl_fw_dbg_trigger_tlv *trigger)
{
 struct iwl_fw_dump_desc *desc;
 unsigned int delay = 0;
 bool monitor_only = 0;

 if (trigger) {
  u16 occurrences = le16_to_cpu(trigger->occurrences) - 1;

  if (!le16_to_cpu(trigger->occurrences))
   return 0;

  if (trigger->flags & IWL_FW_DBG_FORCE_RESTART) {
   IWL_WARN(fwrt, "Force restart: trigger %d fired.\n",
     trig);
   iwl_force_nmi(fwrt->trans);
   return 0;
  }

  trigger->occurrences = cpu_to_le16(occurrences);
  monitor_only = trigger->mode & IWL_FW_DBG_TRIGGER_MONITOR_ONLY;


  delay = le32_to_cpu(trigger->stop_delay) * USEC_PER_MSEC;
 }

 desc = kzalloc(sizeof(*desc) + len, GFP_ATOMIC);
 if (!desc)
  return -ENOMEM;


 desc->len = len;
 desc->trig_desc.type = cpu_to_le32(trig);
 memcpy(desc->trig_desc.data, str, len);

 return iwl_fw_dbg_collect_desc(fwrt, desc, monitor_only, delay);
}
