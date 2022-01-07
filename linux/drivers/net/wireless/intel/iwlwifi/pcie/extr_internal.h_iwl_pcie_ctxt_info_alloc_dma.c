
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dev; } ;
struct iwl_dram_data {int block; int size; int physical; } ;
struct fw_desc {int len; int data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static inline int iwl_pcie_ctxt_info_alloc_dma(struct iwl_trans *trans,
            const struct fw_desc *sec,
            struct iwl_dram_data *dram)
{
 dram->block = dma_alloc_coherent(trans->dev, sec->len,
      &dram->physical,
      GFP_KERNEL);
 if (!dram->block)
  return -ENOMEM;

 dram->size = sec->len;
 memcpy(dram->block, sec->data, sec->len);

 return 0;
}
