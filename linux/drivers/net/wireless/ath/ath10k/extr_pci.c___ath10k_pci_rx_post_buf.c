
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ath10k_pci_pipe {int buf_sz; struct ath10k_ce_pipe* ce_hdl; struct ath10k* hif_ce_state; } ;
struct ath10k_ce_pipe {TYPE_1__* ops; } ;
struct ath10k_ce {int ce_lock; } ;
struct ath10k {int dev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int paddr; } ;
struct TYPE_3__ {int (* ce_rx_post_buf ) (struct ath10k_ce_pipe*,struct sk_buff*,int ) ;} ;


 TYPE_2__* ATH10K_SKB_RXCB (struct sk_buff*) ;
 int DMA_FROM_DEVICE ;
 int EIO ;
 int ENOMEM ;
 int WARN_ONCE (unsigned long,char*) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (int ,scalar_t__,scalar_t__,int ) ;
 int dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ath10k_ce_pipe*,struct sk_buff*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int __ath10k_pci_rx_post_buf(struct ath10k_pci_pipe *pipe)
{
 struct ath10k *ar = pipe->hif_ce_state;
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_ce_pipe *ce_pipe = pipe->ce_hdl;
 struct sk_buff *skb;
 dma_addr_t paddr;
 int ret;

 skb = dev_alloc_skb(pipe->buf_sz);
 if (!skb)
  return -ENOMEM;

 WARN_ONCE((unsigned long)skb->data & 3, "unaligned skb");

 paddr = dma_map_single(ar->dev, skb->data,
          skb->len + skb_tailroom(skb),
          DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(ar->dev, paddr))) {
  ath10k_warn(ar, "failed to dma map pci rx buf\n");
  dev_kfree_skb_any(skb);
  return -EIO;
 }

 ATH10K_SKB_RXCB(skb)->paddr = paddr;

 spin_lock_bh(&ce->ce_lock);
 ret = ce_pipe->ops->ce_rx_post_buf(ce_pipe, skb, paddr);
 spin_unlock_bh(&ce->ce_lock);
 if (ret) {
  dma_unmap_single(ar->dev, paddr, skb->len + skb_tailroom(skb),
     DMA_FROM_DEVICE);
  dev_kfree_skb_any(skb);
  return ret;
 }

 return 0;
}
