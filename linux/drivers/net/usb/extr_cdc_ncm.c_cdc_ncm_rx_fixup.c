
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int net; scalar_t__* data; } ;
struct usb_cdc_ncm_ndp16 {scalar_t__ dwSignature; int wNextNdpIndex; struct usb_cdc_ncm_dpe16* dpe16; } ;
struct usb_cdc_ncm_dpe16 {int wDatagramLength; int wDatagramIndex; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct cdc_ncm_ctx {int rx_max; int rx_ntbs; int rx_overhead; } ;


 int ETH_HLEN ;
 int USB_CDC_NCM_NDP16_NOCRC_SIGN ;
 int cdc_ncm_rx_verify_ndp16 (struct sk_buff*,int) ;
 int cdc_ncm_rx_verify_nth16 (struct cdc_ncm_ctx*,struct sk_buff*) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;
 struct sk_buff* netdev_alloc_skb_ip_align (int ,int) ;
 int netif_dbg (struct usbnet*,int ,int ,char*,int,...) ;
 int rx_err ;
 int skb_put_data (struct sk_buff*,scalar_t__,int) ;
 int usbnet_skb_return (struct usbnet*,struct sk_buff*) ;

int cdc_ncm_rx_fixup(struct usbnet *dev, struct sk_buff *skb_in)
{
 struct sk_buff *skb;
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
 int len;
 int nframes;
 int x;
 int offset;
 struct usb_cdc_ncm_ndp16 *ndp16;
 struct usb_cdc_ncm_dpe16 *dpe16;
 int ndpoffset;
 int loopcount = 50;
 u32 payload = 0;

 ndpoffset = cdc_ncm_rx_verify_nth16(ctx, skb_in);
 if (ndpoffset < 0)
  goto error;

next_ndp:
 nframes = cdc_ncm_rx_verify_ndp16(skb_in, ndpoffset);
 if (nframes < 0)
  goto error;

 ndp16 = (struct usb_cdc_ncm_ndp16 *)(skb_in->data + ndpoffset);

 if (ndp16->dwSignature != cpu_to_le32(USB_CDC_NCM_NDP16_NOCRC_SIGN)) {
  netif_dbg(dev, rx_err, dev->net,
     "invalid DPT16 signature <%#010x>\n",
     le32_to_cpu(ndp16->dwSignature));
  goto err_ndp;
 }
 dpe16 = ndp16->dpe16;

 for (x = 0; x < nframes; x++, dpe16++) {
  offset = le16_to_cpu(dpe16->wDatagramIndex);
  len = le16_to_cpu(dpe16->wDatagramLength);





  if ((offset == 0) || (len == 0)) {
   if (!x)
    goto err_ndp;
   break;
  }


  if (((offset + len) > skb_in->len) ||
    (len > ctx->rx_max) || (len < ETH_HLEN)) {
   netif_dbg(dev, rx_err, dev->net,
      "invalid frame detected (ignored) offset[%u]=%u, length=%u, skb=%p\n",
      x, offset, len, skb_in);
   if (!x)
    goto err_ndp;
   break;

  } else {

   skb = netdev_alloc_skb_ip_align(dev->net, len);
   if (!skb)
    goto error;
   skb_put_data(skb, skb_in->data + offset, len);
   usbnet_skb_return(dev, skb);
   payload += len;
  }
 }
err_ndp:

 ndpoffset = le16_to_cpu(ndp16->wNextNdpIndex);
 if (ndpoffset && loopcount--)
  goto next_ndp;


 ctx->rx_overhead += skb_in->len - payload;
 ctx->rx_ntbs++;

 return 1;
error:
 return 0;
}
