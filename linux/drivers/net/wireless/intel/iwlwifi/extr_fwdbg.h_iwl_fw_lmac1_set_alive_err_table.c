
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int error_event_table_tlv_status; scalar_t__* lmac_error_event_table; } ;
struct iwl_trans {TYPE_1__ dbg; } ;


 int IWL_ERROR_EVENT_TABLE_LMAC1 ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static inline void iwl_fw_lmac1_set_alive_err_table(struct iwl_trans *trans,
          u32 lmac_error_event_table)
{
 if (!(trans->dbg.error_event_table_tlv_status &
       IWL_ERROR_EVENT_TABLE_LMAC1) ||
     WARN_ON(trans->dbg.lmac_error_event_table[0] !=
      lmac_error_event_table))
  trans->dbg.lmac_error_event_table[0] = lmac_error_event_table;
}
