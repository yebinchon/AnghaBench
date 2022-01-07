
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int release; } ;
struct TYPE_7__ {int has_am; int write_before_read; int bus_info; int card; int * ops; struct shark_device* private_data; TYPE_1__* v4l2_dev; } ;
struct shark_device {struct shark_device* transfer_buffer; TYPE_1__ v4l2_dev; TYPE_5__ tea; int usbdev; } ;


 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TB_LEN ;
 int THIS_MODULE ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct shark_device*) ;
 struct shark_device* kmalloc (int ,int ) ;
 struct shark_device* kzalloc (int,int ) ;
 int radio_tea5777_init (TYPE_5__*,int ) ;
 int shark_instance ;
 int shark_register_leds (struct shark_device*,int *) ;
 int shark_tea_ops ;
 int shark_unregister_leds (struct shark_device*) ;
 int strscpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 int usb_shark_release ;
 int v4l2_device_register (int *,TYPE_1__*) ;
 int v4l2_device_set_name (TYPE_1__*,int ,int *) ;
 int v4l2_device_unregister (TYPE_1__*) ;
 int v4l2_err (TYPE_1__*,char*) ;

__attribute__((used)) static int usb_shark_probe(struct usb_interface *intf,
      const struct usb_device_id *id)
{
 struct shark_device *shark;
 int retval = -ENOMEM;

 shark = kzalloc(sizeof(struct shark_device), GFP_KERNEL);
 if (!shark)
  return retval;

 shark->transfer_buffer = kmalloc(TB_LEN, GFP_KERNEL);
 if (!shark->transfer_buffer)
  goto err_alloc_buffer;

 v4l2_device_set_name(&shark->v4l2_dev, DRV_NAME, &shark_instance);

 retval = shark_register_leds(shark, &intf->dev);
 if (retval)
  goto err_reg_leds;

 shark->v4l2_dev.release = usb_shark_release;
 retval = v4l2_device_register(&intf->dev, &shark->v4l2_dev);
 if (retval) {
  v4l2_err(&shark->v4l2_dev, "couldn't register v4l2_device\n");
  goto err_reg_dev;
 }

 shark->usbdev = interface_to_usbdev(intf);
 shark->tea.v4l2_dev = &shark->v4l2_dev;
 shark->tea.private_data = shark;
 shark->tea.ops = &shark_tea_ops;
 shark->tea.has_am = 1;
 shark->tea.write_before_read = 1;
 strscpy(shark->tea.card, "Griffin radioSHARK2",
  sizeof(shark->tea.card));
 usb_make_path(shark->usbdev, shark->tea.bus_info,
  sizeof(shark->tea.bus_info));

 retval = radio_tea5777_init(&shark->tea, THIS_MODULE);
 if (retval) {
  v4l2_err(&shark->v4l2_dev, "couldn't init tea5777\n");
  goto err_init_tea;
 }

 return 0;

err_init_tea:
 v4l2_device_unregister(&shark->v4l2_dev);
err_reg_dev:
 shark_unregister_leds(shark);
err_reg_leds:
 kfree(shark->transfer_buffer);
err_alloc_buffer:
 kfree(shark);

 return retval;
}
