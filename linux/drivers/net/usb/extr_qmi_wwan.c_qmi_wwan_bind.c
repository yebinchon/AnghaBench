
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
struct usbnet {int hard_mtu; TYPE_5__* net; TYPE_4__* udev; TYPE_2__* driver_info; int data; } ;
struct usb_interface_descriptor {scalar_t__ bInterfaceNumber; } ;
struct usb_interface {int dev; TYPE_1__* cur_altsetting; } ;
struct usb_driver {int dummy; } ;
struct usb_cdc_union_desc {scalar_t__ bMasterInterface0; int bSlaveInterface0; } ;
struct usb_cdc_parsed_header {struct usb_cdc_ether_desc* usb_cdc_ether_desc; struct usb_cdc_union_desc* usb_cdc_union_desc; } ;
struct usb_cdc_ether_desc {int iMACAddress; scalar_t__ wMaxSegmentSize; } ;
struct qmi_wwan_state {struct usb_interface* data; struct usb_interface* control; } ;
struct TYPE_10__ {int* dev_addr; int ** sysfs_groups; int * netdev_ops; } ;
struct TYPE_8__ {scalar_t__ bcdUSB; } ;
struct TYPE_9__ {TYPE_3__ descriptor; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int extralen; struct usb_interface_descriptor desc; int * extra; } ;


 int BUILD_BUG_ON (int) ;
 int QMI_WWAN_QUIRK_DTR ;
 int buggy_fw_addr ;
 int cdc_parse_cdc_header (struct usb_cdc_parsed_header*,struct usb_interface*,int *,int) ;
 int default_modem_addr ;
 int dev_err (int *,char*,scalar_t__,int ) ;
 struct usb_driver* driver_of (struct usb_interface*) ;
 int eth_hw_addr_random (TYPE_5__*) ;
 scalar_t__ ether_addr_equal (int*,int ) ;
 int le16_to_cpu (scalar_t__) ;
 scalar_t__ possibly_iphdr (int*) ;
 int qmi_wwan_change_dtr (struct usbnet*,int) ;
 int qmi_wwan_manage_power (struct usbnet*,int) ;
 int qmi_wwan_netdev_ops ;
 int qmi_wwan_register_subdriver (struct usbnet*) ;
 int qmi_wwan_sysfs_attr_group ;
 int usb_driver_claim_interface (struct usb_driver*,struct usb_interface*,struct usbnet*) ;
 int usb_driver_release_interface (struct usb_driver*,struct usb_interface*) ;
 struct usb_interface* usb_ifnum_to_if (TYPE_4__*,int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usbnet_get_ethernet_addr (struct usbnet*,int ) ;

__attribute__((used)) static int qmi_wwan_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int status = -1;
 u8 *buf = intf->cur_altsetting->extra;
 int len = intf->cur_altsetting->extralen;
 struct usb_interface_descriptor *desc = &intf->cur_altsetting->desc;
 struct usb_cdc_union_desc *cdc_union;
 struct usb_cdc_ether_desc *cdc_ether;
 struct usb_driver *driver = driver_of(intf);
 struct qmi_wwan_state *info = (void *)&dev->data;
 struct usb_cdc_parsed_header hdr;

 BUILD_BUG_ON((sizeof(((struct usbnet *)0)->data) <
        sizeof(struct qmi_wwan_state)));


 info->control = intf;
 info->data = intf;


 cdc_parse_cdc_header(&hdr, intf, buf, len);
 cdc_union = hdr.usb_cdc_union_desc;
 cdc_ether = hdr.usb_cdc_ether_desc;


 if (cdc_union) {
  info->data = usb_ifnum_to_if(dev->udev,
          cdc_union->bSlaveInterface0);
  if (desc->bInterfaceNumber != cdc_union->bMasterInterface0 ||
      !info->data) {
   dev_err(&intf->dev,
    "bogus CDC Union: master=%u, slave=%u\n",
    cdc_union->bMasterInterface0,
    cdc_union->bSlaveInterface0);


   cdc_union = ((void*)0);
   info->data = intf;
  }
 }


 if (cdc_ether && cdc_ether->wMaxSegmentSize) {
  dev->hard_mtu = le16_to_cpu(cdc_ether->wMaxSegmentSize);
  usbnet_get_ethernet_addr(dev, cdc_ether->iMACAddress);
 }


 if (info->control != info->data) {
  status = usb_driver_claim_interface(driver, info->data, dev);
  if (status < 0)
   goto err;
 }

 status = qmi_wwan_register_subdriver(dev);
 if (status < 0 && info->control != info->data) {
  usb_set_intfdata(info->data, ((void*)0));
  usb_driver_release_interface(driver, info->data);
 }
 if (dev->driver_info->data & QMI_WWAN_QUIRK_DTR ||
     le16_to_cpu(dev->udev->descriptor.bcdUSB) >= 0x0201) {
  qmi_wwan_manage_power(dev, 1);
  qmi_wwan_change_dtr(dev, 1);
 }





 if (ether_addr_equal(dev->net->dev_addr, default_modem_addr) ||
     ether_addr_equal(dev->net->dev_addr, buggy_fw_addr))
  eth_hw_addr_random(dev->net);


 if (possibly_iphdr(dev->net->dev_addr)) {
  dev->net->dev_addr[0] |= 0x02;
  dev->net->dev_addr[0] &= 0xbf;
 }
 dev->net->netdev_ops = &qmi_wwan_netdev_ops;
 dev->net->sysfs_groups[0] = &qmi_wwan_sysfs_attr_group;
err:
 return status;
}
