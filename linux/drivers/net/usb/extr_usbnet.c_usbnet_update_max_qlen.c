
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int rx_urb_size; int hard_mtu; int rx_qlen; int tx_qlen; TYPE_1__* udev; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_2__ {int speed; } ;


 int MAX_QUEUE_MEMORY ;




void usbnet_update_max_qlen(struct usbnet *dev)
{
 enum usb_device_speed speed = dev->udev->speed;

 if (!dev->rx_urb_size || !dev->hard_mtu)
  goto insanity;
 switch (speed) {
 case 130:
  dev->rx_qlen = MAX_QUEUE_MEMORY / dev->rx_urb_size;
  dev->tx_qlen = MAX_QUEUE_MEMORY / dev->hard_mtu;
  break;
 case 129:
 case 128:





  dev->rx_qlen = 5 * MAX_QUEUE_MEMORY / dev->rx_urb_size;
  dev->tx_qlen = 5 * MAX_QUEUE_MEMORY / dev->hard_mtu;
  break;
 default:
insanity:
  dev->rx_qlen = dev->tx_qlen = 4;
 }
}
