
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_fw_dbg_trigger_tlv {int dummy; } ;
struct TYPE_2__ {struct iwl_fw_dbg_trigger_tlv** trigger_tlv; } ;
struct iwl_fw {TYPE_1__ dbg; } ;
typedef enum iwl_fw_dbg_trigger { ____Placeholder_iwl_fw_dbg_trigger } iwl_fw_dbg_trigger ;



__attribute__((used)) static inline struct iwl_fw_dbg_trigger_tlv*
_iwl_fw_dbg_get_trigger(const struct iwl_fw *fw, enum iwl_fw_dbg_trigger id)
{
 return fw->dbg.trigger_tlv[id];
}
