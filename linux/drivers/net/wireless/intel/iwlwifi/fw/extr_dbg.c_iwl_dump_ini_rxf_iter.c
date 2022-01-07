
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_ini_rxf_data {int size; int fifo_num; int offset; } ;
struct iwl_fw_runtime {int trans; } ;
struct TYPE_4__ {scalar_t__ header_only; void* num_of_registers; } ;
struct iwl_fw_ini_region_cfg {TYPE_2__ fifos; void** start_addr; void* offset; } ;
struct iwl_fw_ini_error_dump_register {void* data; void* addr; } ;
struct TYPE_3__ {void* num_of_registers; void* fifo_num; } ;
struct iwl_fw_ini_error_dump_range {void* range_data_size; TYPE_1__ fifo_hdr; scalar_t__ data; } ;
typedef int __le32 ;


 int EBUSY ;
 int EIO ;
 int RXF_FIFO_RD_FENCE_INC ;
 int RXF_LD_FENCE_OFFSET_ADDR ;
 int RXF_LD_WR2FENCE ;
 int RXF_SET_FENCE_MODE ;
 void* cpu_to_le32 (int) ;
 int iwl_ini_get_rxf_data (struct iwl_fw_runtime*,struct iwl_fw_ini_region_cfg*,struct iwl_ini_rxf_data*) ;
 int iwl_read_prph_no_grab (int ,int) ;
 int iwl_trans_grab_nic_access (int ,unsigned long*) ;
 int iwl_trans_release_nic_access (int ,unsigned long*) ;
 int iwl_write_prph_no_grab (int ,int,int) ;
 int le32_to_cpu (void*) ;

__attribute__((used)) static int iwl_dump_ini_rxf_iter(struct iwl_fw_runtime *fwrt,
     struct iwl_fw_ini_region_cfg *reg,
     void *range_ptr, int idx)
{
 struct iwl_fw_ini_error_dump_range *range = range_ptr;
 struct iwl_ini_rxf_data rxf_data;
 struct iwl_fw_ini_error_dump_register *reg_dump = (void *)range->data;
 u32 offs = le32_to_cpu(reg->offset), addr;
 u32 registers_size =
  le32_to_cpu(reg->fifos.num_of_registers) * sizeof(*reg_dump);
 __le32 *data;
 unsigned long flags;
 int i;

 iwl_ini_get_rxf_data(fwrt, reg, &rxf_data);
 if (!rxf_data.size)
  return -EIO;

 if (!iwl_trans_grab_nic_access(fwrt->trans, &flags))
  return -EBUSY;

 range->fifo_hdr.fifo_num = cpu_to_le32(rxf_data.fifo_num);
 range->fifo_hdr.num_of_registers = reg->fifos.num_of_registers;
 range->range_data_size = cpu_to_le32(rxf_data.size + registers_size);





 for (i = 0; i < le32_to_cpu(reg->fifos.num_of_registers); i++) {
  addr = le32_to_cpu(reg->start_addr[i]) + offs;

  reg_dump->addr = cpu_to_le32(addr);
  reg_dump->data = cpu_to_le32(iwl_read_prph_no_grab(fwrt->trans,
           addr));

  reg_dump++;
 }

 if (reg->fifos.header_only) {
  range->range_data_size = cpu_to_le32(registers_size);
  goto out;
 }





 offs += rxf_data.offset;


 iwl_write_prph_no_grab(fwrt->trans, RXF_SET_FENCE_MODE + offs, 0x1);

 iwl_write_prph_no_grab(fwrt->trans, RXF_LD_WR2FENCE + offs, 0x1);

 iwl_write_prph_no_grab(fwrt->trans, RXF_LD_FENCE_OFFSET_ADDR + offs,
          0x0);


 addr = RXF_FIFO_RD_FENCE_INC + offs;
 data = (void *)reg_dump;
 for (i = 0; i < rxf_data.size; i += sizeof(*data))
  *data++ = cpu_to_le32(iwl_read_prph_no_grab(fwrt->trans, addr));

out:
 iwl_trans_release_nic_access(fwrt->trans, &flags);

 return sizeof(*range) + le32_to_cpu(range->range_data_size);
}
