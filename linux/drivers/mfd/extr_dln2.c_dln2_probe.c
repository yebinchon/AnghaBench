
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {int dummy; } ;
struct usb_interface {struct device dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_6__ {scalar_t__ bInterfaceNumber; int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_1__ desc; } ;
struct usb_device_id {int dummy; } ;
struct dln2_dev {int event_cb_list; int disconnect_lock; int event_cb_lock; TYPE_5__* mod_rx_slots; int disconnect_wq; struct usb_interface* interface; int usb_dev; int ep_in; int ep_out; } ;
struct TYPE_10__ {TYPE_4__* slots; int lock; int wq; } ;
struct TYPE_9__ {int done; } ;
struct TYPE_7__ {int bEndpointAddress; } ;
struct TYPE_8__ {TYPE_2__ desc; } ;


 int ARRAY_SIZE (int ) ;
 int DLN2_HANDLES ;
 int DLN2_MAX_RX_SLOTS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (struct device*,char*) ;
 int dln2_devs ;
 int dln2_free (struct dln2_dev*) ;
 int dln2_hw_init (struct dln2_dev*) ;
 int dln2_setup_rx_urbs (struct dln2_dev*,struct usb_host_interface*) ;
 int dln2_start_rx_urbs (struct dln2_dev*,int ) ;
 int dln2_stop_rx_urbs (struct dln2_dev*) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 struct dln2_dev* kzalloc (int,int ) ;
 int mfd_add_hotplug_devices (struct device*,int ,int ) ;
 int spin_lock_init (int *) ;
 int usb_get_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,struct dln2_dev*) ;

__attribute__((used)) static int dln2_probe(struct usb_interface *interface,
        const struct usb_device_id *usb_id)
{
 struct usb_host_interface *hostif = interface->cur_altsetting;
 struct device *dev = &interface->dev;
 struct dln2_dev *dln2;
 int ret;
 int i, j;

 if (hostif->desc.bInterfaceNumber != 0 ||
     hostif->desc.bNumEndpoints < 2)
  return -ENODEV;

 dln2 = kzalloc(sizeof(*dln2), GFP_KERNEL);
 if (!dln2)
  return -ENOMEM;

 dln2->ep_out = hostif->endpoint[0].desc.bEndpointAddress;
 dln2->ep_in = hostif->endpoint[1].desc.bEndpointAddress;
 dln2->usb_dev = usb_get_dev(interface_to_usbdev(interface));
 dln2->interface = interface;
 usb_set_intfdata(interface, dln2);
 init_waitqueue_head(&dln2->disconnect_wq);

 for (i = 0; i < DLN2_HANDLES; i++) {
  init_waitqueue_head(&dln2->mod_rx_slots[i].wq);
  spin_lock_init(&dln2->mod_rx_slots[i].lock);
  for (j = 0; j < DLN2_MAX_RX_SLOTS; j++)
   init_completion(&dln2->mod_rx_slots[i].slots[j].done);
 }

 spin_lock_init(&dln2->event_cb_lock);
 spin_lock_init(&dln2->disconnect_lock);
 INIT_LIST_HEAD(&dln2->event_cb_list);

 ret = dln2_setup_rx_urbs(dln2, hostif);
 if (ret)
  goto out_free;

 ret = dln2_start_rx_urbs(dln2, GFP_KERNEL);
 if (ret)
  goto out_stop_rx;

 ret = dln2_hw_init(dln2);
 if (ret < 0) {
  dev_err(dev, "failed to initialize hardware\n");
  goto out_stop_rx;
 }

 ret = mfd_add_hotplug_devices(dev, dln2_devs, ARRAY_SIZE(dln2_devs));
 if (ret != 0) {
  dev_err(dev, "failed to add mfd devices to core\n");
  goto out_stop_rx;
 }

 return 0;

out_stop_rx:
 dln2_stop_rx_urbs(dln2);

out_free:
 dln2_free(dln2);

 return ret;
}
