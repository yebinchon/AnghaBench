
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* size_log2; void* num_segs; void* swap_size; void* size; void** bus_addr; } ;
struct ath10k_swap_code_seg_info {size_t* paddr; void** virt_address; TYPE_1__ seg_hw_info; } ;
struct ath10k {int dev; } ;
typedef size_t dma_addr_t ;


 size_t ATH10K_SWAP_CODE_SEG_BIN_LEN_MAX ;
 size_t ATH10K_SWAP_CODE_SEG_NUM_SUPPORTED ;
 int GFP_KERNEL ;
 void* __cpu_to_le32 (size_t) ;
 int ath10k_err (struct ath10k*,char*,size_t,size_t) ;
 struct ath10k_swap_code_seg_info* devm_kzalloc (int ,int,int ) ;
 void* dma_alloc_coherent (int ,size_t,size_t*,int ) ;
 size_t ilog2 (size_t) ;
 size_t roundup (size_t,int) ;

__attribute__((used)) static struct ath10k_swap_code_seg_info *
ath10k_swap_code_seg_alloc(struct ath10k *ar, size_t swap_bin_len)
{
 struct ath10k_swap_code_seg_info *seg_info;
 void *virt_addr;
 dma_addr_t paddr;

 swap_bin_len = roundup(swap_bin_len, 2);
 if (swap_bin_len > ATH10K_SWAP_CODE_SEG_BIN_LEN_MAX) {
  ath10k_err(ar, "refusing code swap bin because it is too big %zu > %d\n",
      swap_bin_len, ATH10K_SWAP_CODE_SEG_BIN_LEN_MAX);
  return ((void*)0);
 }

 seg_info = devm_kzalloc(ar->dev, sizeof(*seg_info), GFP_KERNEL);
 if (!seg_info)
  return ((void*)0);

 virt_addr = dma_alloc_coherent(ar->dev, swap_bin_len, &paddr,
           GFP_KERNEL);
 if (!virt_addr)
  return ((void*)0);

 seg_info->seg_hw_info.bus_addr[0] = __cpu_to_le32(paddr);
 seg_info->seg_hw_info.size = __cpu_to_le32(swap_bin_len);
 seg_info->seg_hw_info.swap_size = __cpu_to_le32(swap_bin_len);
 seg_info->seg_hw_info.num_segs =
   __cpu_to_le32(ATH10K_SWAP_CODE_SEG_NUM_SUPPORTED);
 seg_info->seg_hw_info.size_log2 = __cpu_to_le32(ilog2(swap_bin_len));
 seg_info->virt_address[0] = virt_addr;
 seg_info->paddr[0] = paddr;

 return seg_info;
}
