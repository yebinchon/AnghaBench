
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_txf_iter_data {int fifo_size; } ;
struct TYPE_3__ {struct iwl_txf_iter_data txf_iter_data; } ;
struct iwl_fw_runtime {TYPE_1__ dump; } ;
struct TYPE_4__ {int header_only; int num_of_registers; } ;
struct iwl_fw_ini_region_cfg {TYPE_2__ fifos; } ;
struct iwl_fw_ini_error_dump_register {int dummy; } ;
struct iwl_fw_ini_error_dump_range {int dummy; } ;
struct iwl_fw_ini_error_dump {int dummy; } ;


 scalar_t__ iwl_ini_txf_iter (struct iwl_fw_runtime*,struct iwl_fw_ini_region_cfg*,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 iwl_dump_ini_txf_get_size(struct iwl_fw_runtime *fwrt,
         struct iwl_fw_ini_region_cfg *reg)
{
 struct iwl_txf_iter_data *iter = &fwrt->dump.txf_iter_data;
 u32 size = 0;
 u32 fifo_hdr = sizeof(struct iwl_fw_ini_error_dump_range) +
  le32_to_cpu(reg->fifos.num_of_registers) *
  sizeof(struct iwl_fw_ini_error_dump_register);

 while (iwl_ini_txf_iter(fwrt, reg, size)) {
  size += fifo_hdr;
  if (!reg->fifos.header_only)
   size += iter->fifo_size;
 }

 if (size)
  size += sizeof(struct iwl_fw_ini_error_dump);

 return size;
}
