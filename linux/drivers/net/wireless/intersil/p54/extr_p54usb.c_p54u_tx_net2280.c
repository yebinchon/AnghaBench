
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_flags; } ;
struct sk_buff {int len; scalar_t__ data; struct p54u_priv* priv; } ;
struct p54u_priv {int submitted; int udev; } ;
struct p54_hdr {int req_id; } ;
struct net2280_tx_hdr {int device_addr; void* len; void* val; void* addr; void* port; } ;
struct net2280_reg_write {int device_addr; void* len; void* val; void* addr; void* port; } ;
struct ieee80211_hw {int len; scalar_t__ data; struct p54u_priv* priv; } ;


 int ENOMEM ;
 scalar_t__ FREE_AFTER_TX (struct sk_buff*) ;
 int GFP_ATOMIC ;
 int ISL38XX_DEV_INT_DATA ;
 int NET2280_DEV_U32 ;
 int P54U_DEV_BASE ;
 int P54U_PIPE_DATA ;
 int P54U_PIPE_DEV ;
 int URB_FREE_BUFFER ;
 int URB_ZERO_PACKET ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int kfree (struct net2280_tx_hdr*) ;
 struct net2280_tx_hdr* kmalloc (int,int ) ;
 int memset (struct net2280_tx_hdr*,int ,int) ;
 int p54_free_skb (struct sk_buff*,struct sk_buff*) ;
 int p54u_tx_cb ;
 int p54u_tx_dummy_cb ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,struct net2280_tx_hdr*,int,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void p54u_tx_net2280(struct ieee80211_hw *dev, struct sk_buff *skb)
{
 struct p54u_priv *priv = dev->priv;
 struct urb *int_urb = ((void*)0), *data_urb = ((void*)0);
 struct net2280_tx_hdr *hdr = (void *)skb->data - sizeof(*hdr);
 struct net2280_reg_write *reg = ((void*)0);
 int err = -ENOMEM;

 reg = kmalloc(sizeof(*reg), GFP_ATOMIC);
 if (!reg)
  goto out;

 int_urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!int_urb)
  goto out;

 data_urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!data_urb)
  goto out;

 reg->port = cpu_to_le16(NET2280_DEV_U32);
 reg->addr = cpu_to_le32(P54U_DEV_BASE);
 reg->val = cpu_to_le32(ISL38XX_DEV_INT_DATA);

 memset(hdr, 0, sizeof(*hdr));
 hdr->len = cpu_to_le16(skb->len);
 hdr->device_addr = ((struct p54_hdr *) skb->data)->req_id;

 usb_fill_bulk_urb(int_urb, priv->udev,
  usb_sndbulkpipe(priv->udev, P54U_PIPE_DEV), reg, sizeof(*reg),
  p54u_tx_dummy_cb, dev);






 int_urb->transfer_flags |= URB_FREE_BUFFER | URB_ZERO_PACKET;
 reg = ((void*)0);

 usb_fill_bulk_urb(data_urb, priv->udev,
     usb_sndbulkpipe(priv->udev, P54U_PIPE_DATA),
     hdr, skb->len + sizeof(*hdr), FREE_AFTER_TX(skb) ?
     p54u_tx_cb : p54u_tx_dummy_cb, skb);
 data_urb->transfer_flags |= URB_ZERO_PACKET;

 usb_anchor_urb(int_urb, &priv->submitted);
 err = usb_submit_urb(int_urb, GFP_ATOMIC);
 if (err) {
  usb_unanchor_urb(int_urb);
  goto out;
 }

 usb_anchor_urb(data_urb, &priv->submitted);
 err = usb_submit_urb(data_urb, GFP_ATOMIC);
 if (err) {
  usb_unanchor_urb(data_urb);
  goto out;
 }
out:
 usb_free_urb(int_urb);
 usb_free_urb(data_urb);

 if (err) {
  kfree(reg);
  p54_free_skb(dev, skb);
 }
}
