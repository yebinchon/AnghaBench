
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct usb_cdc_ncm_ndp16 {int wLength; } ;
struct usb_cdc_ncm_dpe16 {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; int dev; } ;


 int EINVAL ;
 int USB_CDC_NCM_NDP16_LENGTH_MIN ;
 int le16_to_cpu (int ) ;
 struct usbnet* netdev_priv (int ) ;
 int netif_dbg (struct usbnet*,int ,int ,char*,int) ;
 int rx_err ;

int cdc_ncm_rx_verify_ndp16(struct sk_buff *skb_in, int ndpoffset)
{
 struct usbnet *dev = netdev_priv(skb_in->dev);
 struct usb_cdc_ncm_ndp16 *ndp16;
 int ret = -EINVAL;

 if ((ndpoffset + sizeof(struct usb_cdc_ncm_ndp16)) > skb_in->len) {
  netif_dbg(dev, rx_err, dev->net, "invalid NDP offset  <%u>\n",
     ndpoffset);
  goto error;
 }
 ndp16 = (struct usb_cdc_ncm_ndp16 *)(skb_in->data + ndpoffset);

 if (le16_to_cpu(ndp16->wLength) < USB_CDC_NCM_NDP16_LENGTH_MIN) {
  netif_dbg(dev, rx_err, dev->net, "invalid DPT16 length <%u>\n",
     le16_to_cpu(ndp16->wLength));
  goto error;
 }

 ret = ((le16_to_cpu(ndp16->wLength) -
     sizeof(struct usb_cdc_ncm_ndp16)) /
     sizeof(struct usb_cdc_ncm_dpe16));
 ret--;

 if ((sizeof(struct usb_cdc_ncm_ndp16) +
      ret * (sizeof(struct usb_cdc_ncm_dpe16))) > skb_in->len) {
  netif_dbg(dev, rx_err, dev->net, "Invalid nframes = %d\n", ret);
  ret = -EINVAL;
 }

error:
 return ret;
}
