
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct mlx5e_dma_info {scalar_t__ addr; int page; } ;
struct device {int dummy; } ;


 unsigned int ALIGN (int ,int) ;
 int DMA_FROM_DEVICE ;
 int dma_sync_single_for_cpu (struct device*,scalar_t__,unsigned int,int ) ;
 void* page_address (int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,void const*,unsigned int) ;

__attribute__((used)) static inline void
mlx5e_copy_skb_header(struct device *pdev, struct sk_buff *skb,
        struct mlx5e_dma_info *dma_info,
        int offset_from, u32 headlen)
{
 const void *from = page_address(dma_info->page) + offset_from;

 unsigned int len = ALIGN(headlen, sizeof(long));

 dma_sync_single_for_cpu(pdev, dma_info->addr + offset_from, len,
    DMA_FROM_DEVICE);
 skb_copy_to_linear_data(skb, from, len);
}
