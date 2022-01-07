
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct usbnet {int can_dma_sg; TYPE_3__* net; int udev; int rx_urb_size; struct aqc111_data* driver_priv; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int speed; TYPE_2__* actconfig; } ;
struct aqc111_data {int advertised_speed; int autoneg; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_7__ {int needed_headroom; int needed_tailroom; int max_mtu; int vlan_features; int features; int hw_features; int * ethtool_ops; int * netdev_ops; int perm_addr; int dev_addr; } ;
struct TYPE_5__ {int bConfigurationValue; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int AQ_SUPPORT_FEATURE ;
 int AQ_SUPPORT_HW_FEATURE ;
 int AQ_SUPPORT_VLAN_FEATURE ;
 int AUTONEG_ENABLE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SPEED_1000 ;
 int SPEED_5000 ;
 int URB_SIZE ;
 int USB_SPEED_SUPER ;
 int aqc111_ethtool_ops ;
 int aqc111_netdev_ops ;
 int aqc111_read_fw_version (struct usbnet*,struct aqc111_data*) ;
 int aqc111_read_perm_mac (struct usbnet*) ;
 int ether_addr_copy (int ,int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct aqc111_data*) ;
 struct aqc111_data* kzalloc (int,int ) ;
 int netdev_dbg (TYPE_3__*,char*) ;
 int netif_set_gso_max_size (TYPE_3__*,int) ;
 scalar_t__ usb_device_no_sg_constraint (int ) ;
 int usb_driver_set_configuration (struct usb_device*,int) ;
 int usb_reset_configuration (int ) ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int aqc111_bind(struct usbnet *dev, struct usb_interface *intf)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 enum usb_device_speed usb_speed = udev->speed;
 struct aqc111_data *aqc111_data;
 int ret;


 if (udev->actconfig->desc.bConfigurationValue != 1) {
  usb_driver_set_configuration(udev, 1);
  return -ENODEV;
 }

 usb_reset_configuration(dev->udev);

 ret = usbnet_get_endpoints(dev, intf);
 if (ret < 0) {
  netdev_dbg(dev->net, "usbnet_get_endpoints failed");
  return ret;
 }

 aqc111_data = kzalloc(sizeof(*aqc111_data), GFP_KERNEL);
 if (!aqc111_data)
  return -ENOMEM;


 dev->driver_priv = aqc111_data;


 ret = aqc111_read_perm_mac(dev);
 if (ret)
  goto out;

 ether_addr_copy(dev->net->dev_addr, dev->net->perm_addr);


 dev->rx_urb_size = URB_SIZE;


 dev->net->needed_headroom += sizeof(u64);
 dev->net->needed_tailroom += sizeof(u64);

 dev->net->max_mtu = 16334;

 dev->net->netdev_ops = &aqc111_netdev_ops;
 dev->net->ethtool_ops = &aqc111_ethtool_ops;

 if (usb_device_no_sg_constraint(dev->udev))
  dev->can_dma_sg = 1;

 dev->net->hw_features |= AQ_SUPPORT_HW_FEATURE;
 dev->net->features |= AQ_SUPPORT_FEATURE;
 dev->net->vlan_features |= AQ_SUPPORT_VLAN_FEATURE;

 netif_set_gso_max_size(dev->net, 65535);

 aqc111_read_fw_version(dev, aqc111_data);
 aqc111_data->autoneg = AUTONEG_ENABLE;
 aqc111_data->advertised_speed = (usb_speed == USB_SPEED_SUPER) ?
      SPEED_5000 : SPEED_1000;

 return 0;

out:
 kfree(aqc111_data);
 return ret;
}
