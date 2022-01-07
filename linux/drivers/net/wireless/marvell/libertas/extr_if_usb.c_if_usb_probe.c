
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int wMaxPacketSize; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct TYPE_6__ {int bcdDevice; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bcdUSB; } ;
struct usb_device {int dev; TYPE_3__ descriptor; } ;
struct lbs_private {int is_polling; int reset_card; int * reset_deep_sleep_wakeup; int * exit_deep_sleep; int * enter_deep_sleep; int hw_host_to_card; } ;
struct if_usb_card {scalar_t__ model; int boot2_version; struct lbs_private* priv; int ep_out_buf; void* tx_urb; void* rx_urb; void* ep_in_size; void* ep_out_size; void* ep_out; void* ep_in; struct usb_device* udev; int fw_wq; int fw_timeout; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct lbs_private*) ;
 int MRVDRV_ETH_TX_PACKET_BUFFER_SIZE ;
 int PTR_ERR (struct lbs_private*) ;
 int fw_table ;
 int if_usb_free (struct if_usb_card*) ;
 int if_usb_fw_timeo ;
 int if_usb_host_to_card ;
 int if_usb_prog_firmware ;
 int if_usb_reset_device (struct if_usb_card*) ;
 int if_usb_reset_olpc_card ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kmalloc (int ,int ) ;
 struct if_usb_card* kzalloc (int,int ) ;
 struct lbs_private* lbs_add_card (struct if_usb_card*,int *) ;
 int lbs_deb_usbd (int *,char*,...) ;
 int lbs_get_firmware_async (struct lbs_private*,int *,scalar_t__,int ,int ) ;
 int lbs_remove_card (struct lbs_private*) ;
 void* le16_to_cpu (int ) ;
 scalar_t__ machine_is_olpc () ;
 int timer_setup (int *,int ,int ) ;
 void* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 void* usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct if_usb_card*) ;

__attribute__((used)) static int if_usb_probe(struct usb_interface *intf,
   const struct usb_device_id *id)
{
 struct usb_device *udev;
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 struct lbs_private *priv;
 struct if_usb_card *cardp;
 int r = -ENOMEM;
 int i;

 udev = interface_to_usbdev(intf);

 cardp = kzalloc(sizeof(struct if_usb_card), GFP_KERNEL);
 if (!cardp)
  goto error;

 timer_setup(&cardp->fw_timeout, if_usb_fw_timeo, 0);
 init_waitqueue_head(&cardp->fw_wq);

 cardp->udev = udev;
 cardp->model = (uint32_t) id->driver_info;
 iface_desc = intf->cur_altsetting;

 lbs_deb_usbd(&udev->dev, "bcdUSB = 0x%X bDeviceClass = 0x%X"
       " bDeviceSubClass = 0x%X, bDeviceProtocol = 0x%X\n",
       le16_to_cpu(udev->descriptor.bcdUSB),
       udev->descriptor.bDeviceClass,
       udev->descriptor.bDeviceSubClass,
       udev->descriptor.bDeviceProtocol);

 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;
  if (usb_endpoint_is_bulk_in(endpoint)) {
   cardp->ep_in_size = le16_to_cpu(endpoint->wMaxPacketSize);
   cardp->ep_in = usb_endpoint_num(endpoint);

   lbs_deb_usbd(&udev->dev, "in_endpoint = %d\n", cardp->ep_in);
   lbs_deb_usbd(&udev->dev, "Bulk in size is %d\n", cardp->ep_in_size);

  } else if (usb_endpoint_is_bulk_out(endpoint)) {
   cardp->ep_out_size = le16_to_cpu(endpoint->wMaxPacketSize);
   cardp->ep_out = usb_endpoint_num(endpoint);

   lbs_deb_usbd(&udev->dev, "out_endpoint = %d\n", cardp->ep_out);
   lbs_deb_usbd(&udev->dev, "Bulk out size is %d\n", cardp->ep_out_size);
  }
 }
 if (!cardp->ep_out_size || !cardp->ep_in_size) {
  lbs_deb_usbd(&udev->dev, "Endpoints not found\n");
  goto dealloc;
 }
 if (!(cardp->rx_urb = usb_alloc_urb(0, GFP_KERNEL))) {
  lbs_deb_usbd(&udev->dev, "Rx URB allocation failed\n");
  goto dealloc;
 }
 if (!(cardp->tx_urb = usb_alloc_urb(0, GFP_KERNEL))) {
  lbs_deb_usbd(&udev->dev, "Tx URB allocation failed\n");
  goto dealloc;
 }
 cardp->ep_out_buf = kmalloc(MRVDRV_ETH_TX_PACKET_BUFFER_SIZE, GFP_KERNEL);
 if (!cardp->ep_out_buf) {
  lbs_deb_usbd(&udev->dev, "Could not allocate buffer\n");
  goto dealloc;
 }

 priv = lbs_add_card(cardp, &intf->dev);
 if (IS_ERR(priv)) {
  r = PTR_ERR(priv);
  goto err_add_card;
 }

 cardp->priv = priv;

 priv->hw_host_to_card = if_usb_host_to_card;
 priv->enter_deep_sleep = ((void*)0);
 priv->exit_deep_sleep = ((void*)0);
 priv->reset_deep_sleep_wakeup = ((void*)0);
 priv->is_polling = 0;





 cardp->boot2_version = udev->descriptor.bcdDevice;

 usb_get_dev(udev);
 usb_set_intfdata(intf, cardp);

 r = lbs_get_firmware_async(priv, &udev->dev, cardp->model,
       fw_table, if_usb_prog_firmware);
 if (r)
  goto err_get_fw;

 return 0;

err_get_fw:
 lbs_remove_card(priv);
err_add_card:
 if_usb_reset_device(cardp);
dealloc:
 if_usb_free(cardp);

error:
 return r;
}
