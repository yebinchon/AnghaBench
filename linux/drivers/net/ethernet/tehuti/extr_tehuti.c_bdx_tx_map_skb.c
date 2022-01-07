
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct txdb {TYPE_2__* wptr; } ;
struct txd_desc {struct pbl* pbl; } ;
struct sk_buff {int data; } ;
struct pbl {void* pa_hi; void* pa_lo; void* len; } ;
struct bdx_priv {TYPE_5__* pdev; struct txdb txdb; } ;
typedef int skb_frag_t ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {int nr_frags; int * frags; } ;
struct TYPE_8__ {int bytes; } ;
struct TYPE_6__ {struct sk_buff* skb; int dma; } ;
struct TYPE_7__ {TYPE_1__ addr; int len; } ;


 void* CPU_CHIP_SWAP32 (int ) ;
 int DBG (char*,void*) ;
 int DMA_TO_DEVICE ;
 int H32_64 (int ) ;
 int L32_64 (int ) ;
 int PCI_DMA_TODEVICE ;
 int bdx_tx_db_inc_wptr (struct txdb*) ;
 int pci_map_single (TYPE_5__*,int ,int ,int ) ;
 int skb_frag_dma_map (int *,int const*,int ,int ,int ) ;
 int skb_frag_size (int const*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;
 TYPE_3__* txd_sizes ;

__attribute__((used)) static inline void
bdx_tx_map_skb(struct bdx_priv *priv, struct sk_buff *skb,
        struct txd_desc *txdd)
{
 struct txdb *db = &priv->txdb;
 struct pbl *pbl = &txdd->pbl[0];
 int nr_frags = skb_shinfo(skb)->nr_frags;
 int i;

 db->wptr->len = skb_headlen(skb);
 db->wptr->addr.dma = pci_map_single(priv->pdev, skb->data,
         db->wptr->len, PCI_DMA_TODEVICE);
 pbl->len = CPU_CHIP_SWAP32(db->wptr->len);
 pbl->pa_lo = CPU_CHIP_SWAP32(L32_64(db->wptr->addr.dma));
 pbl->pa_hi = CPU_CHIP_SWAP32(H32_64(db->wptr->addr.dma));
 DBG("=== pbl   len: 0x%x ================\n", pbl->len);
 DBG("=== pbl pa_lo: 0x%x ================\n", pbl->pa_lo);
 DBG("=== pbl pa_hi: 0x%x ================\n", pbl->pa_hi);
 bdx_tx_db_inc_wptr(db);

 for (i = 0; i < nr_frags; i++) {
  const skb_frag_t *frag;

  frag = &skb_shinfo(skb)->frags[i];
  db->wptr->len = skb_frag_size(frag);
  db->wptr->addr.dma = skb_frag_dma_map(&priv->pdev->dev, frag,
            0, skb_frag_size(frag),
            DMA_TO_DEVICE);

  pbl++;
  pbl->len = CPU_CHIP_SWAP32(db->wptr->len);
  pbl->pa_lo = CPU_CHIP_SWAP32(L32_64(db->wptr->addr.dma));
  pbl->pa_hi = CPU_CHIP_SWAP32(H32_64(db->wptr->addr.dma));
  bdx_tx_db_inc_wptr(db);
 }


 db->wptr->len = -txd_sizes[nr_frags].bytes;
 db->wptr->addr.skb = skb;
 bdx_tx_db_inc_wptr(db);
}
