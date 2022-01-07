
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usbpn_dev {int active_setting; void* tx_pipe; void* rx_pipe; int rx_lock; int tx_lock; struct usb_interface* data_intf; struct usb_interface* intf; struct usb_device* usb; struct net_device* dev; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface const* altsetting; int dev; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
typedef struct usb_host_interface {int extralen; TYPE_3__* endpoint; TYPE_1__ desc; int * extra; } const usb_host_interface ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_cdc_union_desc {int bSlaveInterface0; } ;
struct usb_cdc_parsed_header {int phonet_magic_present; struct usb_cdc_union_desc* usb_cdc_union_desc; } ;
struct net_device {int dev; } ;
struct TYPE_5__ {int bEndpointAddress; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int NET_NAME_UNKNOWN ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_netdev (int ,char const*,int ,int ) ;
 int cdc_parse_cdc_header (struct usb_cdc_parsed_header*,struct usb_interface*,int *,int) ;
 int dev_dbg (int *,char*) ;
 int free_netdev (struct net_device*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 struct usbpn_dev* netdev_priv (struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int rxq_size ;
 int spin_lock_init (int *) ;
 int struct_size (struct usbpn_dev*,int ,int ) ;
 int urbs ;
 int usb_driver_claim_interface (int *,struct usb_interface*,struct usbpn_dev*) ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,int ) ;
 scalar_t__ usb_pipein (int ) ;
 void* usb_rcvbulkpipe (struct usb_device*,int ) ;
 int usb_set_interface (struct usb_device*,int ,int) ;
 int usb_set_intfdata (struct usb_interface*,struct usbpn_dev*) ;
 void* usb_sndbulkpipe (struct usb_device*,int ) ;
 int usbpn_driver ;
 int usbpn_setup ;

__attribute__((used)) static int usbpn_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 static const char ifname[] = "usbpn%d";
 const struct usb_cdc_union_desc *union_header = ((void*)0);
 const struct usb_host_interface *data_desc;
 struct usb_interface *data_intf;
 struct usb_device *usbdev = interface_to_usbdev(intf);
 struct net_device *dev;
 struct usbpn_dev *pnd;
 u8 *data;
 int phonet = 0;
 int len, err;
 struct usb_cdc_parsed_header hdr;

 data = intf->altsetting->extra;
 len = intf->altsetting->extralen;
 cdc_parse_cdc_header(&hdr, intf, data, len);
 union_header = hdr.usb_cdc_union_desc;
 phonet = hdr.phonet_magic_present;

 if (!union_header || !phonet)
  return -EINVAL;

 data_intf = usb_ifnum_to_if(usbdev, union_header->bSlaveInterface0);
 if (data_intf == ((void*)0))
  return -ENODEV;

 if (data_intf->num_altsetting != 2)
  return -EINVAL;
 if (data_intf->altsetting[0].desc.bNumEndpoints == 0 &&
     data_intf->altsetting[1].desc.bNumEndpoints == 2)
  data_desc = data_intf->altsetting + 1;
 else
 if (data_intf->altsetting[0].desc.bNumEndpoints == 2 &&
     data_intf->altsetting[1].desc.bNumEndpoints == 0)
  data_desc = data_intf->altsetting;
 else
  return -EINVAL;

 dev = alloc_netdev(struct_size(pnd, urbs, rxq_size), ifname,
      NET_NAME_UNKNOWN, usbpn_setup);
 if (!dev)
  return -ENOMEM;

 pnd = netdev_priv(dev);
 SET_NETDEV_DEV(dev, &intf->dev);

 pnd->dev = dev;
 pnd->usb = usbdev;
 pnd->intf = intf;
 pnd->data_intf = data_intf;
 spin_lock_init(&pnd->tx_lock);
 spin_lock_init(&pnd->rx_lock);

 if (usb_pipein(data_desc->endpoint[0].desc.bEndpointAddress)) {
  pnd->rx_pipe = usb_rcvbulkpipe(usbdev,
   data_desc->endpoint[0].desc.bEndpointAddress);
  pnd->tx_pipe = usb_sndbulkpipe(usbdev,
   data_desc->endpoint[1].desc.bEndpointAddress);
 } else {
  pnd->rx_pipe = usb_rcvbulkpipe(usbdev,
   data_desc->endpoint[1].desc.bEndpointAddress);
  pnd->tx_pipe = usb_sndbulkpipe(usbdev,
   data_desc->endpoint[0].desc.bEndpointAddress);
 }
 pnd->active_setting = data_desc - data_intf->altsetting;

 err = usb_driver_claim_interface(&usbpn_driver, data_intf, pnd);
 if (err)
  goto out;


 usb_set_interface(usbdev, union_header->bSlaveInterface0,
    !pnd->active_setting);
 usb_set_intfdata(intf, pnd);

 err = register_netdev(dev);
 if (err) {
  usb_driver_release_interface(&usbpn_driver, data_intf);
  goto out;
 }

 dev_dbg(&dev->dev, "USB CDC Phonet device found\n");
 return 0;

out:
 usb_set_intfdata(intf, ((void*)0));
 free_netdev(dev);
 return err;
}
