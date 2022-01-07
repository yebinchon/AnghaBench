
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct usb_cdc_ncm_nth16 {scalar_t__ dwSignature; int wNdpIndex; int wSequence; int wBlockLength; } ;
struct usb_cdc_ncm_ndp16 {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; int dev; } ;
struct cdc_ncm_ctx {int rx_max; int rx_seq; } ;


 int EINVAL ;
 int USB_CDC_NCM_NTH16_SIGN ;
 scalar_t__ cpu_to_le32 (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;
 struct usbnet* netdev_priv (int ) ;
 int netif_dbg (struct usbnet*,int ,int ,char*,...) ;
 int rx_err ;

int cdc_ncm_rx_verify_nth16(struct cdc_ncm_ctx *ctx, struct sk_buff *skb_in)
{
 struct usbnet *dev = netdev_priv(skb_in->dev);
 struct usb_cdc_ncm_nth16 *nth16;
 int len;
 int ret = -EINVAL;

 if (ctx == ((void*)0))
  goto error;

 if (skb_in->len < (sizeof(struct usb_cdc_ncm_nth16) +
     sizeof(struct usb_cdc_ncm_ndp16))) {
  netif_dbg(dev, rx_err, dev->net, "frame too short\n");
  goto error;
 }

 nth16 = (struct usb_cdc_ncm_nth16 *)skb_in->data;

 if (nth16->dwSignature != cpu_to_le32(USB_CDC_NCM_NTH16_SIGN)) {
  netif_dbg(dev, rx_err, dev->net,
     "invalid NTH16 signature <%#010x>\n",
     le32_to_cpu(nth16->dwSignature));
  goto error;
 }

 len = le16_to_cpu(nth16->wBlockLength);
 if (len > ctx->rx_max) {
  netif_dbg(dev, rx_err, dev->net,
     "unsupported NTB block length %u/%u\n", len,
     ctx->rx_max);
  goto error;
 }

 if ((ctx->rx_seq + 1) != le16_to_cpu(nth16->wSequence) &&
     (ctx->rx_seq || le16_to_cpu(nth16->wSequence)) &&
     !((ctx->rx_seq == 0xffff) && !le16_to_cpu(nth16->wSequence))) {
  netif_dbg(dev, rx_err, dev->net,
     "sequence number glitch prev=%d curr=%d\n",
     ctx->rx_seq, le16_to_cpu(nth16->wSequence));
 }
 ctx->rx_seq = le16_to_cpu(nth16->wSequence);

 ret = le16_to_cpu(nth16->wNdpIndex);
error:
 return ret;
}
