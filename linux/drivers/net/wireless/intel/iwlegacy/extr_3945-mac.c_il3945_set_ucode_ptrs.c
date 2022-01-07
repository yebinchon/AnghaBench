
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int p_addr; int len; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_4__ {int p_addr; } ;
struct il_priv {TYPE_3__ ucode_code; TYPE_2__ ucode_data; TYPE_1__ ucode_data_backup; } ;
typedef int dma_addr_t ;


 int BSM_DRAM_DATA_BYTECOUNT_REG ;
 int BSM_DRAM_DATA_PTR_REG ;
 int BSM_DRAM_INST_BYTECOUNT_REG ;
 int BSM_DRAM_INST_LOAD ;
 int BSM_DRAM_INST_PTR_REG ;
 int D_INFO (char*) ;
 int il_wr_prph (struct il_priv*,int ,int) ;

__attribute__((used)) static int
il3945_set_ucode_ptrs(struct il_priv *il)
{
 dma_addr_t pinst;
 dma_addr_t pdata;


 pinst = il->ucode_code.p_addr;
 pdata = il->ucode_data_backup.p_addr;


 il_wr_prph(il, BSM_DRAM_INST_PTR_REG, pinst);
 il_wr_prph(il, BSM_DRAM_DATA_PTR_REG, pdata);
 il_wr_prph(il, BSM_DRAM_DATA_BYTECOUNT_REG, il->ucode_data.len);



 il_wr_prph(il, BSM_DRAM_INST_BYTECOUNT_REG,
     il->ucode_code.len | BSM_DRAM_INST_LOAD);

 D_INFO("Runtime uCode pointers are set.\n");

 return 0;
}
