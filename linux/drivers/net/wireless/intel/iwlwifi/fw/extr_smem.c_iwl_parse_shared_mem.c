
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_shared_mem_cfg_v2 {void** internal_txfifo_size; void* internal_txfifo_addr; void** rxfifo_size; void** txfifo_size; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct TYPE_6__ {int num_lmacs; int num_txfifo_entries; void** internal_txfifo_size; void* internal_txfifo_addr; void* rxfifo2_size; TYPE_1__* lmac; } ;
struct iwl_fw_runtime {TYPE_3__ smem_cfg; TYPE_2__* fw; } ;
struct TYPE_5__ {int ucode_capa; } ;
struct TYPE_4__ {void* rxfifo1_size; void** txfifo_size; } ;


 int ARRAY_SIZE (void**) ;
 int BUILD_BUG_ON (int) ;
 int IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG ;
 scalar_t__ fw_has_capa (int *,int ) ;
 void* le32_to_cpu (void*) ;

__attribute__((used)) static void iwl_parse_shared_mem(struct iwl_fw_runtime *fwrt,
     struct iwl_rx_packet *pkt)
{
 struct iwl_shared_mem_cfg_v2 *mem_cfg = (void *)pkt->data;
 int i;

 fwrt->smem_cfg.num_lmacs = 1;

 fwrt->smem_cfg.num_txfifo_entries = ARRAY_SIZE(mem_cfg->txfifo_size);
 for (i = 0; i < ARRAY_SIZE(mem_cfg->txfifo_size); i++)
  fwrt->smem_cfg.lmac[0].txfifo_size[i] =
   le32_to_cpu(mem_cfg->txfifo_size[i]);

 fwrt->smem_cfg.lmac[0].rxfifo1_size =
  le32_to_cpu(mem_cfg->rxfifo_size[0]);
 fwrt->smem_cfg.rxfifo2_size = le32_to_cpu(mem_cfg->rxfifo_size[1]);


 if (fw_has_capa(&fwrt->fw->ucode_capa,
   IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG)) {
  BUILD_BUG_ON(sizeof(fwrt->smem_cfg.internal_txfifo_size) !=
        sizeof(mem_cfg->internal_txfifo_size));

  fwrt->smem_cfg.internal_txfifo_addr =
   le32_to_cpu(mem_cfg->internal_txfifo_addr);

  for (i = 0;
       i < ARRAY_SIZE(fwrt->smem_cfg.internal_txfifo_size);
       i++)
   fwrt->smem_cfg.internal_txfifo_size[i] =
    le32_to_cpu(mem_cfg->internal_txfifo_size[i]);
 }
}
