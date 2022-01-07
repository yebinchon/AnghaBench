
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {int hard_mtu; TYPE_8__* udev; struct usb_host_endpoint* status; int data; } ;
struct usb_interface_descriptor {scalar_t__ bInterfaceClass; int bNumEndpoints; } ;
struct usb_interface {int dev; TYPE_5__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int bInterval; scalar_t__ wMaxPacketSize; } ;
struct usb_host_endpoint {int extralen; struct usb_endpoint_descriptor desc; int * extra; } ;
struct usb_driver {int dummy; } ;
struct usb_cdc_parsed_header {TYPE_3__* usb_cdc_mdlm_detail_desc; TYPE_2__* usb_cdc_mdlm_desc; TYPE_6__* usb_cdc_ether_desc; TYPE_1__* usb_cdc_acm_descriptor; scalar_t__ usb_cdc_header_desc; TYPE_7__* usb_cdc_union_desc; } ;
struct usb_cdc_notification {int dummy; } ;
struct usb_cdc_mdlm_detail_desc {int dummy; } ;
struct cdc_state {struct usb_interface* data; struct usb_interface* control; TYPE_6__* ether; TYPE_7__* u; scalar_t__ header; } ;
struct TYPE_16__ {int dev; TYPE_4__* actconfig; } ;
struct TYPE_15__ {int bMasterInterface0; int bSlaveInterface0; } ;
struct TYPE_14__ {scalar_t__ wMaxSegmentSize; } ;
struct TYPE_13__ {int extralen; struct usb_host_endpoint* endpoint; struct usb_interface_descriptor desc; int * extra; } ;
struct TYPE_12__ {int extralen; int * extra; } ;
struct TYPE_11__ {int bLength; } ;
struct TYPE_10__ {int bGUID; } ;
struct TYPE_9__ {scalar_t__ bmCapabilities; } ;


 int EDOM ;
 int ENODEV ;
 scalar_t__ USB_CLASS_CDC_DATA ;
 int cdc_parse_cdc_header (struct usb_cdc_parsed_header*,struct usb_interface*,int *,int) ;
 int dev_dbg (int *,char*,...) ;
 int dev_info (int *,char*) ;
 struct usb_driver* driver_of (struct usb_interface*) ;
 scalar_t__ is_activesync (struct usb_interface_descriptor*) ;
 scalar_t__ is_novatel_rndis (struct usb_interface_descriptor*) ;
 scalar_t__ is_rndis (struct usb_interface_descriptor*) ;
 scalar_t__ is_wireless_rndis (struct usb_interface_descriptor*) ;
 int le16_to_cpu (scalar_t__) ;
 int mbm_guid ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memset (struct cdc_state*,int ,int) ;
 int usb_driver_claim_interface (struct usb_driver*,struct usb_interface*,struct usbnet*) ;
 int usb_driver_release_interface (struct usb_driver*,struct usb_interface*) ;
 int usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 void* usb_ifnum_to_if (TYPE_8__*,int) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;

int usbnet_generic_cdc_bind(struct usbnet *dev, struct usb_interface *intf)
{
 u8 *buf = intf->cur_altsetting->extra;
 int len = intf->cur_altsetting->extralen;
 struct usb_interface_descriptor *d;
 struct cdc_state *info = (void *) &dev->data;
 int status;
 int rndis;
 bool android_rndis_quirk = 0;
 struct usb_driver *driver = driver_of(intf);
 struct usb_cdc_parsed_header header;

 if (sizeof(dev->data) < sizeof(*info))
  return -EDOM;




 if (len == 0 && dev->udev->actconfig->extralen) {



  buf = dev->udev->actconfig->extra;
  len = dev->udev->actconfig->extralen;
  dev_dbg(&intf->dev, "CDC descriptors on config\n");
 }




 if (len == 0) {
  struct usb_host_endpoint *hep;

  hep = intf->cur_altsetting->endpoint;
  if (hep) {
   buf = hep->extra;
   len = hep->extralen;
  }
  if (len)
   dev_dbg(&intf->dev,
    "CDC descriptors on endpoint\n");
 }




 rndis = (is_rndis(&intf->cur_altsetting->desc) ||
   is_activesync(&intf->cur_altsetting->desc) ||
   is_wireless_rndis(&intf->cur_altsetting->desc) ||
   is_novatel_rndis(&intf->cur_altsetting->desc));

 memset(info, 0, sizeof(*info));
 info->control = intf;

 cdc_parse_cdc_header(&header, intf, buf, len);

 info->u = header.usb_cdc_union_desc;
 info->header = header.usb_cdc_header_desc;
 info->ether = header.usb_cdc_ether_desc;
 if (!info->u) {
  if (rndis)
   goto skip;
  else
   goto bad_desc;
 }




 info->control = usb_ifnum_to_if(dev->udev, info->u->bMasterInterface0);
 info->data = usb_ifnum_to_if(dev->udev, info->u->bSlaveInterface0);
 if (!info->control || !info->data) {
  dev_dbg(&intf->dev,
   "master #%u/%p slave #%u/%p\n",
   info->u->bMasterInterface0,
   info->control,
   info->u->bSlaveInterface0,
   info->data);

  if (rndis) {
   android_rndis_quirk = 1;
   goto skip;
  }
  goto bad_desc;
 }
 if (info->control != intf) {
  dev_dbg(&intf->dev, "bogus CDC Union\n");



  if (info->data == intf) {
   info->data = info->control;
   info->control = intf;
  } else
   goto bad_desc;
 }


 if (info->control == info->data)
  goto skip;


 d = &info->data->cur_altsetting->desc;
 if (d->bInterfaceClass != USB_CLASS_CDC_DATA) {
  dev_dbg(&intf->dev, "slave class %u\n", d->bInterfaceClass);
  goto bad_desc;
 }
skip:







 if (rndis && is_rndis(&intf->cur_altsetting->desc) &&
     header.usb_cdc_acm_descriptor &&
     header.usb_cdc_acm_descriptor->bmCapabilities) {
  dev_dbg(&intf->dev,
   "ACM capabilities %02x, not really RNDIS?\n",
   header.usb_cdc_acm_descriptor->bmCapabilities);
  goto bad_desc;
 }

 if (header.usb_cdc_ether_desc && info->ether->wMaxSegmentSize) {
  dev->hard_mtu = le16_to_cpu(info->ether->wMaxSegmentSize);



 }

 if (header.usb_cdc_mdlm_desc &&
     memcmp(header.usb_cdc_mdlm_desc->bGUID, mbm_guid, 16)) {
  dev_dbg(&intf->dev, "GUID doesn't match\n");
  goto bad_desc;
 }

 if (header.usb_cdc_mdlm_detail_desc &&
  header.usb_cdc_mdlm_detail_desc->bLength <
   (sizeof(struct usb_cdc_mdlm_detail_desc) + 1)) {
  dev_dbg(&intf->dev, "Descriptor too short\n");
  goto bad_desc;
 }
 if (rndis && (!info->u || android_rndis_quirk)) {
  info->control = usb_ifnum_to_if(dev->udev, 0);
  info->data = usb_ifnum_to_if(dev->udev, 1);
  if (!info->control || !info->data || info->control != intf) {
   dev_dbg(&intf->dev,
    "rndis: master #0/%p slave #1/%p\n",
    info->control,
    info->data);
   goto bad_desc;
  }

 } else if (!info->header || (!rndis && !info->ether)) {
  dev_dbg(&intf->dev, "missing cdc %s%s%sdescriptor\n",
   info->header ? "" : "header ",
   info->u ? "" : "union ",
   info->ether ? "" : "ether ");
  goto bad_desc;
 }




 if (info->data != info->control) {
  status = usb_driver_claim_interface(driver, info->data, dev);
  if (status < 0)
   return status;
 }
 status = usbnet_get_endpoints(dev, info->data);
 if (status < 0) {

  usb_set_intfdata(info->data, ((void*)0));
  if (info->data != info->control)
   usb_driver_release_interface(driver, info->data);
  return status;
 }


 if (info->data != info->control)
  dev->status = ((void*)0);
 if (info->control->cur_altsetting->desc.bNumEndpoints == 1) {
  struct usb_endpoint_descriptor *desc;

  dev->status = &info->control->cur_altsetting->endpoint[0];
  desc = &dev->status->desc;
  if (!usb_endpoint_is_int_in(desc) ||
      (le16_to_cpu(desc->wMaxPacketSize)
       < sizeof(struct usb_cdc_notification)) ||
      !desc->bInterval) {
   dev_dbg(&intf->dev, "bad notification endpoint\n");
   dev->status = ((void*)0);
  }
 }
 if (rndis && !dev->status) {
  dev_dbg(&intf->dev, "missing RNDIS status endpoint\n");
  usb_set_intfdata(info->data, ((void*)0));
  usb_driver_release_interface(driver, info->data);
  return -ENODEV;
 }

 return 0;

bad_desc:
 dev_info(&dev->udev->dev, "bad CDC descriptors\n");
 return -ENODEV;
}
