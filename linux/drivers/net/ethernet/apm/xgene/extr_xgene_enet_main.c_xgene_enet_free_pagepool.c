
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct xgene_enet_raw_desc {int m0; } ;
struct xgene_enet_desc_ring {size_t slots; size_t head; struct page** frag_page; int ndev; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
typedef int __le64 ;


 int DATAADDR ;
 int DMA_FROM_DEVICE ;
 int GET_VAL (int ,int ) ;
 int NV ;
 int PAGE_SIZE ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int le64_to_cpu (int ) ;
 struct device* ndev_to_dev (int ) ;
 int put_page (struct page*) ;
 int xgene_enet_get_data_len (int ) ;

__attribute__((used)) static void xgene_enet_free_pagepool(struct xgene_enet_desc_ring *buf_pool,
         struct xgene_enet_raw_desc *raw_desc,
         struct xgene_enet_raw_desc *exp_desc)
{
 __le64 *desc = (void *)exp_desc;
 dma_addr_t dma_addr;
 struct device *dev;
 struct page *page;
 u16 slots, head;
 u32 frag_size;
 int i;

 if (!buf_pool || !raw_desc || !exp_desc ||
     (!GET_VAL(NV, le64_to_cpu(raw_desc->m0))))
  return;

 dev = ndev_to_dev(buf_pool->ndev);
 slots = buf_pool->slots - 1;
 head = buf_pool->head;

 for (i = 0; i < 4; i++) {
  frag_size = xgene_enet_get_data_len(le64_to_cpu(desc[i ^ 1]));
  if (!frag_size)
   break;

  dma_addr = GET_VAL(DATAADDR, le64_to_cpu(desc[i ^ 1]));
  dma_unmap_page(dev, dma_addr, PAGE_SIZE, DMA_FROM_DEVICE);

  page = buf_pool->frag_page[head];
  put_page(page);

  buf_pool->frag_page[head] = ((void*)0);
  head = (head + 1) & slots;
 }
 buf_pool->head = head;
}
