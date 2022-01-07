
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct streamzap_ir {TYPE_3__* usbdev; int phys; int name; struct device* dev; } ;
struct TYPE_6__ {struct device* parent; } ;
struct rc_dev {int map_name; int driver_name; int allowed_protocols; struct streamzap_ir* priv; TYPE_2__ dev; int input_id; int input_phys; int device_name; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int idProduct; int idVendor; } ;
struct TYPE_7__ {TYPE_1__ descriptor; } ;


 int DRIVER_NAME ;
 int RC_DRIVER_IR_RAW ;
 int RC_MAP_STREAMZAP ;
 int RC_PROTO_BIT_ALL_IR_DECODER ;
 int dev_err (struct device*,char*) ;
 int le16_to_cpu (int ) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int snprintf (int ,int,char*,int,int) ;
 int strlcat (int ,char*,int) ;
 int usb_make_path (TYPE_3__*,int ,int) ;
 int usb_to_input_id (TYPE_3__*,int *) ;

__attribute__((used)) static struct rc_dev *streamzap_init_rc_dev(struct streamzap_ir *sz)
{
 struct rc_dev *rdev;
 struct device *dev = sz->dev;
 int ret;

 rdev = rc_allocate_device(RC_DRIVER_IR_RAW);
 if (!rdev) {
  dev_err(dev, "remote dev allocation failed\n");
  goto out;
 }

 snprintf(sz->name, sizeof(sz->name), "Streamzap PC Remote Infrared Receiver (%04x:%04x)",
   le16_to_cpu(sz->usbdev->descriptor.idVendor),
   le16_to_cpu(sz->usbdev->descriptor.idProduct));
 usb_make_path(sz->usbdev, sz->phys, sizeof(sz->phys));
 strlcat(sz->phys, "/input0", sizeof(sz->phys));

 rdev->device_name = sz->name;
 rdev->input_phys = sz->phys;
 usb_to_input_id(sz->usbdev, &rdev->input_id);
 rdev->dev.parent = dev;
 rdev->priv = sz;
 rdev->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
 rdev->driver_name = DRIVER_NAME;
 rdev->map_name = RC_MAP_STREAMZAP;

 ret = rc_register_device(rdev);
 if (ret < 0) {
  dev_err(dev, "remote input device register failed\n");
  goto out;
 }

 return rdev;

out:
 rc_free_device(rdev);
 return ((void*)0);
}
