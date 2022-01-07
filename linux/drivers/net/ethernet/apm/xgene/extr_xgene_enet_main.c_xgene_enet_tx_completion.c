
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct xgene_enet_raw_desc {int m0; int m3; int m1; } ;
struct xgene_enet_pdata {int mss_lock; int * mss_refcnt; } ;
struct xgene_enet_desc_ring {int ndev; int tx_errors; int tx_dropped; int * frag_dma_addr; struct sk_buff** cp_skb; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int DATAADDR ;
 int DMA_TO_DEVICE ;
 int ET ;
 scalar_t__ GET_BIT (int ,int ) ;
 size_t GET_VAL (int ,int ) ;
 int LERR ;
 size_t MAX_SKB_FRAGS ;
 int MSS ;
 int USERINFO ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,size_t,int ,int ) ;
 int le64_to_cpu (int ) ;
 scalar_t__ likely (struct sk_buff*) ;
 struct device* ndev_to_dev (int ) ;
 int netdev_err (int ,char*) ;
 struct xgene_enet_pdata* netdev_priv (int ) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int xgene_enet_tx_completion(struct xgene_enet_desc_ring *cp_ring,
        struct xgene_enet_raw_desc *raw_desc)
{
 struct xgene_enet_pdata *pdata = netdev_priv(cp_ring->ndev);
 struct sk_buff *skb;
 struct device *dev;
 skb_frag_t *frag;
 dma_addr_t *frag_dma_addr;
 u16 skb_index;
 u8 mss_index;
 u8 status;
 int i;

 skb_index = GET_VAL(USERINFO, le64_to_cpu(raw_desc->m0));
 skb = cp_ring->cp_skb[skb_index];
 frag_dma_addr = &cp_ring->frag_dma_addr[skb_index * MAX_SKB_FRAGS];

 dev = ndev_to_dev(cp_ring->ndev);
 dma_unmap_single(dev, GET_VAL(DATAADDR, le64_to_cpu(raw_desc->m1)),
    skb_headlen(skb),
    DMA_TO_DEVICE);

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  frag = &skb_shinfo(skb)->frags[i];
  dma_unmap_page(dev, frag_dma_addr[i], skb_frag_size(frag),
          DMA_TO_DEVICE);
 }

 if (GET_BIT(ET, le64_to_cpu(raw_desc->m3))) {
  mss_index = GET_VAL(MSS, le64_to_cpu(raw_desc->m3));
  spin_lock(&pdata->mss_lock);
  pdata->mss_refcnt[mss_index]--;
  spin_unlock(&pdata->mss_lock);
 }


 status = GET_VAL(LERR, le64_to_cpu(raw_desc->m0));
 if (unlikely(status > 2)) {
  cp_ring->tx_dropped++;
  cp_ring->tx_errors++;
 }

 if (likely(skb)) {
  dev_kfree_skb_any(skb);
 } else {
  netdev_err(cp_ring->ndev, "completion skb is NULL\n");
 }

 return 0;
}
