
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_fwrt_shared_mem_cfg {int num_lmacs; TYPE_1__* lmac; int rxfifo2_size; } ;
struct iwl_fw_runtime {int dummy; } ;
struct iwl_fw_error_dump_fifo {int dummy; } ;
struct iwl_fw_error_dump_data {int dummy; } ;
struct TYPE_2__ {int rxfifo1_size; } ;


 int ADD_LEN (int,int ,size_t) ;
 int IWL_FW_ERROR_DUMP_RXF ;
 int MAX_NUM_LMAC ;
 scalar_t__ WARN_ON (int) ;
 int iwl_fw_dbg_type_on (struct iwl_fw_runtime*,int ) ;

__attribute__((used)) static int iwl_fw_rxf_len(struct iwl_fw_runtime *fwrt,
     struct iwl_fwrt_shared_mem_cfg *mem_cfg)
{
 size_t hdr_len = sizeof(struct iwl_fw_error_dump_data) +
    sizeof(struct iwl_fw_error_dump_fifo);
 u32 fifo_len = 0;
 int i;

 if (!iwl_fw_dbg_type_on(fwrt, IWL_FW_ERROR_DUMP_RXF))
  return 0;


 ADD_LEN(fifo_len, mem_cfg->rxfifo2_size, hdr_len);


 if (WARN_ON(mem_cfg->num_lmacs > MAX_NUM_LMAC))
  mem_cfg->num_lmacs = MAX_NUM_LMAC;

 for (i = 0; i < mem_cfg->num_lmacs; i++)
  ADD_LEN(fifo_len, mem_cfg->lmac[i].rxfifo1_size, hdr_len);

 return fifo_len;
}
