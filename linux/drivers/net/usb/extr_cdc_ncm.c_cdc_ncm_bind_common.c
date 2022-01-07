
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct usbnet {unsigned long* data; TYPE_1__* net; int status; int out; int in; int udev; } ;
struct usb_interface {int dev; TYPE_7__* cur_altsetting; TYPE_3__* intf_assoc; } ;
struct usb_driver {int dummy; } ;
struct usb_cdc_parsed_header {TYPE_2__* usb_cdc_union_desc; int usb_cdc_mbim_extended_desc; int usb_cdc_mbim_desc; int usb_cdc_ncm_desc; TYPE_4__* usb_cdc_ether_desc; } ;
struct TYPE_13__ {int * function; } ;
struct cdc_ncm_ctx {int drvflags; int max_ndp_size; struct usb_interface* data; struct usb_interface* control; void* delayed_ndp16; TYPE_4__* ether_desc; int func_desc; int mbim_desc; int mbim_extended_desc; int mtx; int stop; int bh; TYPE_6__ tx_timer; } ;
typedef scalar_t__ __le16 ;
struct TYPE_12__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_14__ {int extralen; TYPE_5__ desc; scalar_t__* extra; } ;
struct TYPE_11__ {int iMACAddress; } ;
struct TYPE_10__ {int bInterfaceCount; } ;
struct TYPE_9__ {scalar_t__ bSlaveInterface0; } ;
struct TYPE_8__ {scalar_t__ max_mtu; int * netdev_ops; int ** sysfs_groups; int * ethtool_ops; int dev_addr; } ;


 int CDC_MBIM_FLAG_AVOID_ALTSETTING_TOGGLE ;
 int CDC_NCM_FLAG_NDP_TO_END ;
 int CDC_NCM_FLAG_RESET_NTB16 ;
 int CLOCK_MONOTONIC ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 int USB_CDC_GET_NTB_FORMAT ;
 int USB_CDC_NCM_NTB16_FORMAT ;
 int USB_CDC_NCM_NTB32_FORMAT ;
 int USB_CDC_SET_NTB_FORMAT ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int atomic_set (int *,int ) ;
 scalar_t__ cdc_ncm_comm_intf_is_mbim (TYPE_7__*) ;
 scalar_t__ cdc_ncm_eth_hlen (struct usbnet*) ;
 int cdc_ncm_ethtool_ops ;
 int cdc_ncm_find_endpoints (struct usbnet*,struct usb_interface*) ;
 int cdc_ncm_free (struct cdc_ncm_ctx*) ;
 scalar_t__ cdc_ncm_init (struct usbnet*) ;
 scalar_t__ cdc_ncm_max_dgram_size (struct usbnet*) ;
 int cdc_ncm_netdev_ops ;
 int cdc_ncm_setup (struct usbnet*) ;
 int cdc_ncm_sysfs_attr_group ;
 int cdc_ncm_tx_timer_cb ;
 int cdc_ncm_txpath_bh ;
 int cdc_parse_cdc_header (struct usb_cdc_parsed_header*,struct usb_interface*,scalar_t__*,int) ;
 scalar_t__ cpu_to_le16 (int ) ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,...) ;
 struct usb_driver* driver_of (struct usb_interface*) ;
 int hrtimer_init (TYPE_6__*,int ,int ) ;
 void* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int usb_driver_claim_interface (struct usb_driver*,struct usb_interface*,struct usbnet*) ;
 int usb_driver_release_interface (struct usb_driver*,struct usb_interface*) ;
 void* usb_ifnum_to_if (int ,scalar_t__) ;
 int usb_set_interface (int ,scalar_t__,scalar_t__) ;
 int usb_set_intfdata (struct usb_interface*,struct usbnet*) ;
 int usbnet_get_ethernet_addr (struct usbnet*,int ) ;
 int usbnet_read_cmd (struct usbnet*,int ,int,int ,scalar_t__,scalar_t__*,int) ;
 int usbnet_write_cmd (struct usbnet*,int ,int,int ,scalar_t__,int *,int ) ;
 int usleep_range (int,int) ;

int cdc_ncm_bind_common(struct usbnet *dev, struct usb_interface *intf, u8 data_altsetting, int drvflags)
{
 struct cdc_ncm_ctx *ctx;
 struct usb_driver *driver;
 u8 *buf;
 int len;
 int temp;
 int err;
 u8 iface_no;
 struct usb_cdc_parsed_header hdr;
 __le16 curr_ntb_format;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 hrtimer_init(&ctx->tx_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 ctx->tx_timer.function = &cdc_ncm_tx_timer_cb;
 tasklet_init(&ctx->bh, cdc_ncm_txpath_bh, (unsigned long)dev);
 atomic_set(&ctx->stop, 0);
 spin_lock_init(&ctx->mtx);


 dev->data[0] = (unsigned long)ctx;


 ctx->control = intf;


 driver = driver_of(intf);
 buf = intf->cur_altsetting->extra;
 len = intf->cur_altsetting->extralen;


 cdc_parse_cdc_header(&hdr, intf, buf, len);

 if (hdr.usb_cdc_union_desc)
  ctx->data = usb_ifnum_to_if(dev->udev,
         hdr.usb_cdc_union_desc->bSlaveInterface0);
 ctx->ether_desc = hdr.usb_cdc_ether_desc;
 ctx->func_desc = hdr.usb_cdc_ncm_desc;
 ctx->mbim_desc = hdr.usb_cdc_mbim_desc;
 ctx->mbim_extended_desc = hdr.usb_cdc_mbim_extended_desc;


 if (!hdr.usb_cdc_union_desc && intf->intf_assoc && intf->intf_assoc->bInterfaceCount == 2) {
  ctx->data = usb_ifnum_to_if(dev->udev, intf->cur_altsetting->desc.bInterfaceNumber + 1);
  dev_dbg(&intf->dev, "CDC Union missing - got slave from IAD\n");
 }


 if (!ctx->data) {
  dev_dbg(&intf->dev, "CDC Union missing and no IAD found\n");
  goto error;
 }
 if (cdc_ncm_comm_intf_is_mbim(intf->cur_altsetting)) {
  if (!ctx->mbim_desc) {
   dev_dbg(&intf->dev, "MBIM functional descriptor missing\n");
   goto error;
  }
 } else {
  if (!ctx->ether_desc || !ctx->func_desc) {
   dev_dbg(&intf->dev, "NCM or ECM functional descriptors missing\n");
   goto error;
  }
 }


 if (ctx->data != ctx->control) {
  temp = usb_driver_claim_interface(driver, ctx->data, dev);
  if (temp) {
   dev_dbg(&intf->dev, "failed to claim data intf\n");
   goto error;
  }
 }

 iface_no = ctx->data->cur_altsetting->desc.bInterfaceNumber;


 ctx->drvflags = drvflags;







 if (!(ctx->drvflags & CDC_MBIM_FLAG_AVOID_ALTSETTING_TOGGLE))
  usb_set_interface(dev->udev, iface_no, data_altsetting);

 temp = usb_set_interface(dev->udev, iface_no, 0);
 if (temp) {
  dev_dbg(&intf->dev, "set interface failed\n");
  goto error2;
 }


 if (cdc_ncm_init(dev))
  goto error2;






 usleep_range(10000, 20000);


 temp = usb_set_interface(dev->udev, iface_no, data_altsetting);
 if (temp) {
  dev_dbg(&intf->dev, "set interface failed\n");
  goto error2;
 }






 if (ctx->drvflags & CDC_NCM_FLAG_RESET_NTB16) {
  err = usbnet_read_cmd(dev, USB_CDC_GET_NTB_FORMAT,
          USB_TYPE_CLASS | USB_DIR_IN | USB_RECIP_INTERFACE,
          0, iface_no, &curr_ntb_format, 2);
  if (err < 0) {
   goto error2;
  }

  if (curr_ntb_format == cpu_to_le16(USB_CDC_NCM_NTB32_FORMAT)) {
   dev_info(&intf->dev, "resetting NTB format to 16-bit");
   err = usbnet_write_cmd(dev, USB_CDC_SET_NTB_FORMAT,
            USB_TYPE_CLASS | USB_DIR_OUT
            | USB_RECIP_INTERFACE,
            USB_CDC_NCM_NTB16_FORMAT,
            iface_no, ((void*)0), 0);

   if (err < 0)
    goto error2;
  }
 }

 cdc_ncm_find_endpoints(dev, ctx->data);
 cdc_ncm_find_endpoints(dev, ctx->control);
 if (!dev->in || !dev->out || !dev->status) {
  dev_dbg(&intf->dev, "failed to collect endpoints\n");
  goto error2;
 }

 usb_set_intfdata(ctx->data, dev);
 usb_set_intfdata(ctx->control, dev);

 if (ctx->ether_desc) {
  temp = usbnet_get_ethernet_addr(dev, ctx->ether_desc->iMACAddress);
  if (temp) {
   dev_dbg(&intf->dev, "failed to get mac address\n");
   goto error2;
  }
  dev_info(&intf->dev, "MAC-Address: %pM\n", dev->net->dev_addr);
 }


 cdc_ncm_setup(dev);


 if (ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END) {
  ctx->delayed_ndp16 = kzalloc(ctx->max_ndp_size, GFP_KERNEL);
  if (!ctx->delayed_ndp16)
   goto error2;
  dev_info(&intf->dev, "NDP will be placed at end of frame for this device.");
 }


 dev->net->ethtool_ops = &cdc_ncm_ethtool_ops;


 dev->net->sysfs_groups[0] = &cdc_ncm_sysfs_attr_group;


 dev->net->netdev_ops = &cdc_ncm_netdev_ops;
 dev->net->max_mtu = cdc_ncm_max_dgram_size(dev) - cdc_ncm_eth_hlen(dev);

 return 0;

error2:
 usb_set_intfdata(ctx->control, ((void*)0));
 usb_set_intfdata(ctx->data, ((void*)0));
 if (ctx->data != ctx->control)
  usb_driver_release_interface(driver, ctx->data);
error:
 cdc_ncm_free((struct cdc_ncm_ctx *)dev->data[0]);
 dev->data[0] = 0;
 dev_info(&intf->dev, "bind() failure\n");
 return -ENODEV;
}
