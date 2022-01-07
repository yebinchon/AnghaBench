
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int cb; int len; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_tx_ring_info {struct sk_buff* skb; int hdrlen; int mapping; } ;
struct adm8211_tx_hdr {int dummy; } ;
struct adm8211_priv {unsigned int dirty_tx; unsigned int cur_tx; unsigned int tx_ring_size; int lock; int pdev; struct adm8211_tx_ring_info* tx_buffers; TYPE_1__* tx_ring; } ;
struct TYPE_2__ {int status; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_STAT_ACK ;
 int PCI_DMA_TODEVICE ;
 int TDES0_CONTROL_DONE ;
 int TDES0_CONTROL_OWN ;
 int TDES0_STATUS_ES ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status_irqsafe (struct ieee80211_hw*,struct sk_buff*) ;
 int ieee80211_wake_queue (struct ieee80211_hw*,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void adm8211_interrupt_tci(struct ieee80211_hw *dev)
{
 struct adm8211_priv *priv = dev->priv;
 unsigned int dirty_tx;

 spin_lock(&priv->lock);

 for (dirty_tx = priv->dirty_tx; priv->cur_tx - dirty_tx; dirty_tx++) {
  unsigned int entry = dirty_tx % priv->tx_ring_size;
  u32 status = le32_to_cpu(priv->tx_ring[entry].status);
  struct ieee80211_tx_info *txi;
  struct adm8211_tx_ring_info *info;
  struct sk_buff *skb;

  if (status & TDES0_CONTROL_OWN ||
      !(status & TDES0_CONTROL_DONE))
   break;

  info = &priv->tx_buffers[entry];
  skb = info->skb;
  txi = IEEE80211_SKB_CB(skb);



  pci_unmap_single(priv->pdev, info->mapping,
     info->skb->len, PCI_DMA_TODEVICE);

  ieee80211_tx_info_clear_status(txi);

  skb_pull(skb, sizeof(struct adm8211_tx_hdr));
  memcpy(skb_push(skb, info->hdrlen), skb->cb, info->hdrlen);
  if (!(txi->flags & IEEE80211_TX_CTL_NO_ACK) &&
      !(status & TDES0_STATUS_ES))
   txi->flags |= IEEE80211_TX_STAT_ACK;

  ieee80211_tx_status_irqsafe(dev, skb);

  info->skb = ((void*)0);
 }

 if (priv->cur_tx - dirty_tx < priv->tx_ring_size - 2)
  ieee80211_wake_queue(dev, 0);

 priv->dirty_tx = dirty_tx;
 spin_unlock(&priv->lock);
}
