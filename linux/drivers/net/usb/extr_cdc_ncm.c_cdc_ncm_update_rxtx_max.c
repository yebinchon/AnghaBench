
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct usbnet {scalar_t__ rx_urb_size; int hard_mtu; int out; int udev; int net; TYPE_4__* intf; scalar_t__* data; } ;
struct TYPE_10__ {int dwNtbOutMaxSize; } ;
struct cdc_ncm_ctx {int rx_max; int tx_max; int min_tx_pkt; int * tx_curr_skb; TYPE_5__ ncm_parm; TYPE_3__* control; } ;
typedef int __le32 ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_6__ {int bInterfaceNumber; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;


 int CDC_NCM_MIN_TX_PKT ;
 int USB_CDC_SET_NTB_INPUT_SIZE ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int cdc_ncm_check_rx_max (struct usbnet*,int) ;
 int cdc_ncm_check_tx_max (struct usbnet*,int) ;
 int clamp_t (int ,int,int ,int) ;
 int cpu_to_le32 (int) ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,int) ;
 int dev_kfree_skb_any (int *) ;
 int le32_to_cpu (int ) ;
 scalar_t__ netif_running (int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int u16 ;
 int usb_maxpacket (int ,int ,int) ;
 int usbnet_start_xmit (int *,int ) ;
 int usbnet_unlink_rx_urbs (struct usbnet*) ;
 int usbnet_update_max_qlen (struct usbnet*) ;
 scalar_t__ usbnet_write_cmd (struct usbnet*,int ,int,int ,int ,int *,int) ;

__attribute__((used)) static void cdc_ncm_update_rxtx_max(struct usbnet *dev, u32 new_rx, u32 new_tx)
{
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
 u8 iface_no = ctx->control->cur_altsetting->desc.bInterfaceNumber;
 u32 val;

 val = cdc_ncm_check_rx_max(dev, new_rx);


 if (val != ctx->rx_max) {
  __le32 dwNtbInMaxSize = cpu_to_le32(val);

  dev_info(&dev->intf->dev, "setting rx_max = %u\n", val);


  if (usbnet_write_cmd(dev, USB_CDC_SET_NTB_INPUT_SIZE,
         USB_TYPE_CLASS | USB_DIR_OUT
         | USB_RECIP_INTERFACE,
         0, iface_no, &dwNtbInMaxSize, 4) < 0)
   dev_dbg(&dev->intf->dev, "Setting NTB Input Size failed\n");
  else
   ctx->rx_max = val;
 }


 if (dev->rx_urb_size != ctx->rx_max) {
  dev->rx_urb_size = ctx->rx_max;
  if (netif_running(dev->net))
   usbnet_unlink_rx_urbs(dev);
 }

 val = cdc_ncm_check_tx_max(dev, new_tx);
 if (val != ctx->tx_max)
  dev_info(&dev->intf->dev, "setting tx_max = %u\n", val);
 if (val != le32_to_cpu(ctx->ncm_parm.dwNtbOutMaxSize) &&
     val % usb_maxpacket(dev->udev, dev->out, 1) == 0)
  val++;


 if (netif_running(dev->net) && val > ctx->tx_max) {
  netif_tx_lock_bh(dev->net);
  usbnet_start_xmit(((void*)0), dev->net);

  if (ctx->tx_curr_skb) {
   dev_kfree_skb_any(ctx->tx_curr_skb);
   ctx->tx_curr_skb = ((void*)0);
  }
  ctx->tx_max = val;
  netif_tx_unlock_bh(dev->net);
 } else {
  ctx->tx_max = val;
 }

 dev->hard_mtu = ctx->tx_max;


 usbnet_update_max_qlen(dev);


 ctx->min_tx_pkt = clamp_t(u16, ctx->tx_max - 3 * usb_maxpacket(dev->udev, dev->out, 1),
      CDC_NCM_MIN_TX_PKT, ctx->tx_max);
}
