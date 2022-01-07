
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct sk_buff {int dummy; } ;
struct p54p_ring_control {scalar_t__* device_idx; } ;
struct p54p_priv {int pdev; struct p54p_ring_control* ring_control; } ;
struct p54p_desc {scalar_t__ flags; scalar_t__ len; scalar_t__ device_addr; scalar_t__ host_addr; } ;
struct ieee80211_hw {struct p54p_priv* priv; } ;


 scalar_t__ FREE_AFTER_TX (struct sk_buff*) ;
 int PCI_DMA_TODEVICE ;
 int le16_to_cpu (scalar_t__) ;
 size_t le32_to_cpu (scalar_t__) ;
 int p54_free_skb (struct ieee80211_hw*,struct sk_buff*) ;
 int pci_unmap_single (int ,size_t,int ,int ) ;

__attribute__((used)) static void p54p_check_tx_ring(struct ieee80211_hw *dev, u32 *index,
 int ring_index, struct p54p_desc *ring, u32 ring_limit,
 struct sk_buff **tx_buf)
{
 struct p54p_priv *priv = dev->priv;
 struct p54p_ring_control *ring_control = priv->ring_control;
 struct p54p_desc *desc;
 struct sk_buff *skb;
 u32 idx, i;

 i = (*index) % ring_limit;
 (*index) = idx = le32_to_cpu(ring_control->device_idx[ring_index]);
 idx %= ring_limit;

 while (i != idx) {
  desc = &ring[i];

  skb = tx_buf[i];
  tx_buf[i] = ((void*)0);

  pci_unmap_single(priv->pdev, le32_to_cpu(desc->host_addr),
     le16_to_cpu(desc->len), PCI_DMA_TODEVICE);

  desc->host_addr = 0;
  desc->device_addr = 0;
  desc->len = 0;
  desc->flags = 0;

  if (skb && FREE_AFTER_TX(skb))
   p54_free_skb(dev, skb);

  i++;
  i %= ring_limit;
 }
}
