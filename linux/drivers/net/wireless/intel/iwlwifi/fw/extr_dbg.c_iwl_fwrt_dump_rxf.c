
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_fw_runtime {int trans; } ;
struct iwl_fw_error_dump_fifo {void* fence_mode; void* fence_ptr; void* rd_ptr; void* wr_ptr; void* available_bytes; void* fifo_num; scalar_t__ data; } ;
struct iwl_fw_error_dump_data {void* len; void* type; scalar_t__ data; } ;


 int IWL_FW_ERROR_DUMP_RXF ;
 int RXF_FIFO_RD_FENCE_INC ;
 int RXF_LD_FENCE_OFFSET_ADDR ;
 int RXF_LD_WR2FENCE ;
 int RXF_RD_D_SPACE ;
 int RXF_RD_FENCE_PTR ;
 int RXF_RD_RD_PTR ;
 int RXF_RD_WR_PTR ;
 int RXF_SET_FENCE_MODE ;
 void* cpu_to_le32 (int) ;
 struct iwl_fw_error_dump_data* iwl_fw_error_next_data (struct iwl_fw_error_dump_data*) ;
 int iwl_trans_read_prph (int ,int) ;
 int iwl_trans_write_prph (int ,int,int) ;

__attribute__((used)) static void iwl_fwrt_dump_rxf(struct iwl_fw_runtime *fwrt,
         struct iwl_fw_error_dump_data **dump_data,
         int size, u32 offset, int fifo_num)
{
 struct iwl_fw_error_dump_fifo *fifo_hdr;
 u32 *fifo_data;
 u32 fifo_len;
 int i;

 fifo_hdr = (void *)(*dump_data)->data;
 fifo_data = (void *)fifo_hdr->data;
 fifo_len = size;


 if (fifo_len == 0)
  return;


 (*dump_data)->type = cpu_to_le32(IWL_FW_ERROR_DUMP_RXF);
 (*dump_data)->len = cpu_to_le32(fifo_len + sizeof(*fifo_hdr));

 fifo_hdr->fifo_num = cpu_to_le32(fifo_num);
 fifo_hdr->available_bytes =
  cpu_to_le32(iwl_trans_read_prph(fwrt->trans,
      RXF_RD_D_SPACE + offset));
 fifo_hdr->wr_ptr =
  cpu_to_le32(iwl_trans_read_prph(fwrt->trans,
      RXF_RD_WR_PTR + offset));
 fifo_hdr->rd_ptr =
  cpu_to_le32(iwl_trans_read_prph(fwrt->trans,
      RXF_RD_RD_PTR + offset));
 fifo_hdr->fence_ptr =
  cpu_to_le32(iwl_trans_read_prph(fwrt->trans,
      RXF_RD_FENCE_PTR + offset));
 fifo_hdr->fence_mode =
  cpu_to_le32(iwl_trans_read_prph(fwrt->trans,
      RXF_SET_FENCE_MODE + offset));


 iwl_trans_write_prph(fwrt->trans, RXF_SET_FENCE_MODE + offset, 0x1);

 iwl_trans_write_prph(fwrt->trans, RXF_LD_WR2FENCE + offset, 0x1);

 iwl_trans_write_prph(fwrt->trans,
        RXF_LD_FENCE_OFFSET_ADDR + offset, 0x0);


 fifo_len /= sizeof(u32);
 for (i = 0; i < fifo_len; i++)
  fifo_data[i] = iwl_trans_read_prph(fwrt->trans,
       RXF_FIFO_RD_FENCE_INC +
       offset);
 *dump_data = iwl_fw_error_next_data(*dump_data);
}
