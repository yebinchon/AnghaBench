
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_fwrt_shared_mem_cfg {int num_txfifo_entries; int num_lmacs; int* internal_txfifo_size; TYPE_1__* lmac; } ;
struct iwl_fw_runtime {int trans; struct iwl_fwrt_shared_mem_cfg smem_cfg; TYPE_2__* fw; } ;
struct iwl_fw_error_dump_fifo {void* fence_mode; void* fence_ptr; void* rd_ptr; void* wr_ptr; void* available_bytes; void* fifo_num; scalar_t__ data; } ;
struct iwl_fw_error_dump_data {void* len; void* type; scalar_t__ data; } ;
struct TYPE_4__ {int ucode_capa; } ;
struct TYPE_3__ {int * txfifo_size; } ;


 int ARRAY_SIZE (int*) ;
 int IWL_DEBUG_INFO (struct iwl_fw_runtime*,char*) ;
 int IWL_FW_ERROR_DUMP_INTERNAL_TXF ;
 int IWL_FW_ERROR_DUMP_TXF ;
 int IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG ;
 scalar_t__ LMAC2_PRPH_OFFSET ;
 int TXF_CPU2_FENCE_PTR ;
 int TXF_CPU2_FIFO_ITEM_CNT ;
 int TXF_CPU2_LOCK_FENCE ;
 scalar_t__ TXF_CPU2_NUM ;
 int TXF_CPU2_RD_PTR ;
 scalar_t__ TXF_CPU2_READ_MODIFY_ADDR ;
 int TXF_CPU2_READ_MODIFY_DATA ;
 int TXF_CPU2_WR_PTR ;
 scalar_t__ TXF_LARC_NUM ;
 void* cpu_to_le32 (int) ;
 scalar_t__ fw_has_capa (int *,int ) ;
 scalar_t__ iwl_fw_dbg_type_on (struct iwl_fw_runtime*,int) ;
 struct iwl_fw_error_dump_data* iwl_fw_error_next_data (struct iwl_fw_error_dump_data*) ;
 int iwl_fwrt_dump_txf (struct iwl_fw_runtime*,struct iwl_fw_error_dump_data**,int ,scalar_t__,int) ;
 int iwl_trans_grab_nic_access (int ,unsigned long*) ;
 int iwl_trans_read_prph (int ,int) ;
 int iwl_trans_release_nic_access (int ,unsigned long*) ;
 int iwl_trans_write_prph (int ,scalar_t__,int) ;

__attribute__((used)) static void iwl_fw_dump_txf(struct iwl_fw_runtime *fwrt,
       struct iwl_fw_error_dump_data **dump_data)
{
 struct iwl_fw_error_dump_fifo *fifo_hdr;
 struct iwl_fwrt_shared_mem_cfg *cfg = &fwrt->smem_cfg;
 u32 *fifo_data;
 u32 fifo_len;
 unsigned long flags;
 int i, j;

 IWL_DEBUG_INFO(fwrt, "WRT TX FIFO dump\n");

 if (!iwl_trans_grab_nic_access(fwrt->trans, &flags))
  return;

 if (iwl_fw_dbg_type_on(fwrt, IWL_FW_ERROR_DUMP_TXF)) {

  for (i = 0; i < fwrt->smem_cfg.num_txfifo_entries; i++) {

   iwl_trans_write_prph(fwrt->trans, TXF_LARC_NUM, i);
   iwl_fwrt_dump_txf(fwrt, dump_data,
       cfg->lmac[0].txfifo_size[i], 0, i);
  }


  if (fwrt->smem_cfg.num_lmacs > 1) {
   for (i = 0; i < fwrt->smem_cfg.num_txfifo_entries;
        i++) {

    iwl_trans_write_prph(fwrt->trans,
           TXF_LARC_NUM +
           LMAC2_PRPH_OFFSET, i);
    iwl_fwrt_dump_txf(fwrt, dump_data,
        cfg->lmac[1].txfifo_size[i],
        LMAC2_PRPH_OFFSET,
        i + cfg->num_txfifo_entries);
   }
  }
 }

 if (iwl_fw_dbg_type_on(fwrt, IWL_FW_ERROR_DUMP_INTERNAL_TXF) &&
     fw_has_capa(&fwrt->fw->ucode_capa,
   IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG)) {

  for (i = 0;
       i < ARRAY_SIZE(fwrt->smem_cfg.internal_txfifo_size);
       i++) {
   fifo_hdr = (void *)(*dump_data)->data;
   fifo_data = (void *)fifo_hdr->data;
   fifo_len = fwrt->smem_cfg.internal_txfifo_size[i];


   if (fifo_len == 0)
    continue;


   (*dump_data)->type =
    cpu_to_le32(IWL_FW_ERROR_DUMP_INTERNAL_TXF);
   (*dump_data)->len =
    cpu_to_le32(fifo_len + sizeof(*fifo_hdr));

   fifo_hdr->fifo_num = cpu_to_le32(i);


   iwl_trans_write_prph(fwrt->trans, TXF_CPU2_NUM, i +
    fwrt->smem_cfg.num_txfifo_entries);

   fifo_hdr->available_bytes =
    cpu_to_le32(iwl_trans_read_prph(fwrt->trans,
        TXF_CPU2_FIFO_ITEM_CNT));
   fifo_hdr->wr_ptr =
    cpu_to_le32(iwl_trans_read_prph(fwrt->trans,
        TXF_CPU2_WR_PTR));
   fifo_hdr->rd_ptr =
    cpu_to_le32(iwl_trans_read_prph(fwrt->trans,
        TXF_CPU2_RD_PTR));
   fifo_hdr->fence_ptr =
    cpu_to_le32(iwl_trans_read_prph(fwrt->trans,
        TXF_CPU2_FENCE_PTR));
   fifo_hdr->fence_mode =
    cpu_to_le32(iwl_trans_read_prph(fwrt->trans,
        TXF_CPU2_LOCK_FENCE));


   iwl_trans_write_prph(fwrt->trans,
          TXF_CPU2_READ_MODIFY_ADDR,
          TXF_CPU2_WR_PTR);


   iwl_trans_read_prph(fwrt->trans,
         TXF_CPU2_READ_MODIFY_DATA);


   fifo_len /= sizeof(u32);
   for (j = 0; j < fifo_len; j++)
    fifo_data[j] =
     iwl_trans_read_prph(fwrt->trans,
           TXF_CPU2_READ_MODIFY_DATA);
   *dump_data = iwl_fw_error_next_data(*dump_data);
  }
 }

 iwl_trans_release_nic_access(fwrt->trans, &flags);
}
