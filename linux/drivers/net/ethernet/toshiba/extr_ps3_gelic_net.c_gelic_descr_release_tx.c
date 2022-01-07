
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct gelic_descr {struct sk_buff* skb; scalar_t__ data_error; scalar_t__ data_status; scalar_t__ valid_size; scalar_t__ result_size; scalar_t__ next_descr_addr; scalar_t__ buf_size; scalar_t__ buf_addr; } ;
struct gelic_card {int dummy; } ;


 int BUG_ON (int) ;
 int DMA_TO_DEVICE ;
 int GELIC_DESCR_DMA_NOT_IN_USE ;
 int GELIC_DESCR_TX_TAIL ;
 int be32_to_cpu (scalar_t__) ;
 int ctodev (struct gelic_card*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int ,int,int ,int ) ;
 int gelic_descr_set_status (struct gelic_descr*,int ) ;

__attribute__((used)) static void gelic_descr_release_tx(struct gelic_card *card,
           struct gelic_descr *descr)
{
 struct sk_buff *skb = descr->skb;

 BUG_ON(!(be32_to_cpu(descr->data_status) & GELIC_DESCR_TX_TAIL));

 dma_unmap_single(ctodev(card), be32_to_cpu(descr->buf_addr), skb->len,
    DMA_TO_DEVICE);
 dev_kfree_skb_any(skb);

 descr->buf_addr = 0;
 descr->buf_size = 0;
 descr->next_descr_addr = 0;
 descr->result_size = 0;
 descr->valid_size = 0;
 descr->data_status = 0;
 descr->data_error = 0;
 descr->skb = ((void*)0);


 gelic_descr_set_status(descr, GELIC_DESCR_DMA_NOT_IN_USE);
}
