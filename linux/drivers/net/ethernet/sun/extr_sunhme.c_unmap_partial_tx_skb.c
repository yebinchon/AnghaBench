
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct happy_meal_txd {int tx_flags; int tx_addr; } ;
struct happy_meal {int dma_dev; TYPE_1__* happy_block; } ;
struct TYPE_2__ {struct happy_meal_txd* happy_meal_txd; } ;


 int DMA_TO_DEVICE ;
 size_t NEXT_TX (size_t) ;
 size_t TXFLAG_SIZE ;
 int dma_unmap_page (int ,size_t,size_t,int ) ;
 int dma_unmap_single (int ,size_t,size_t,int ) ;
 size_t hme_read_desc32 (struct happy_meal*,int *) ;

__attribute__((used)) static void unmap_partial_tx_skb(struct happy_meal *hp, u32 first_mapping,
     u32 first_len, u32 first_entry, u32 entry)
{
 struct happy_meal_txd *txbase = &hp->happy_block->happy_meal_txd[0];

 dma_unmap_single(hp->dma_dev, first_mapping, first_len, DMA_TO_DEVICE);

 first_entry = NEXT_TX(first_entry);
 while (first_entry != entry) {
  struct happy_meal_txd *this = &txbase[first_entry];
  u32 addr, len;

  addr = hme_read_desc32(hp, &this->tx_addr);
  len = hme_read_desc32(hp, &this->tx_flags);
  len &= TXFLAG_SIZE;
  dma_unmap_page(hp->dma_dev, addr, len, DMA_TO_DEVICE);
 }
}
