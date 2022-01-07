
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int idVendor; int idProduct; } ;
struct usb_device {TYPE_3__ descriptor; } ;
struct TYPE_5__ {struct device* parent; } ;
struct rc_dev {int timeout; int max_timeout; scalar_t__ map_name; int driver_name; int s_carrier_report; int s_learning_mode; int tx_ir; int s_tx_carrier; int s_tx_mask; int s_timeout; int min_timeout; int allowed_protocols; struct mceusb_dev* priv; TYPE_1__ dev; int input_id; int input_phys; int device_name; } ;
struct TYPE_6__ {scalar_t__ rx2; int no_tx; } ;
struct mceusb_dev {size_t model; TYPE_2__ flags; struct usb_device* usbdev; int phys; int name; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_8__ {char* name; scalar_t__ rc_map; int broken_irtimeout; } ;


 int DRIVER_NAME ;
 int IR_DEFAULT_TIMEOUT ;
 int MCE_TIME_UNIT ;
 int MS_TO_NS (int) ;
 int RC_DRIVER_IR_RAW ;
 scalar_t__ RC_MAP_HAUPPAUGE ;
 scalar_t__ RC_MAP_PINNACLE_PCTV_HD ;
 scalar_t__ RC_MAP_RC6_MCE ;
 int RC_PROTO_BIT_ALL_IR_DECODER ;
 int US_TO_NS (int ) ;


 int dev_err (struct device*,char*) ;
 int le16_to_cpu (int ) ;
 TYPE_4__* mceusb_model ;
 int mceusb_set_rx_carrier_report ;
 int mceusb_set_rx_wideband ;
 int mceusb_set_timeout ;
 int mceusb_set_tx_carrier ;
 int mceusb_set_tx_mask ;
 int mceusb_tx_ir ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int snprintf (int ,int,char*,char*,int,int) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_to_input_id (struct usb_device*,int *) ;

__attribute__((used)) static struct rc_dev *mceusb_init_rc_dev(struct mceusb_dev *ir)
{
 struct usb_device *udev = ir->usbdev;
 struct device *dev = ir->dev;
 struct rc_dev *rc;
 int ret;

 rc = rc_allocate_device(RC_DRIVER_IR_RAW);
 if (!rc) {
  dev_err(dev, "remote dev allocation failed");
  goto out;
 }

 snprintf(ir->name, sizeof(ir->name), "%s (%04x:%04x)",
   mceusb_model[ir->model].name ?
   mceusb_model[ir->model].name :
   "Media Center Ed. eHome Infrared Remote Transceiver",
   le16_to_cpu(ir->usbdev->descriptor.idVendor),
   le16_to_cpu(ir->usbdev->descriptor.idProduct));

 usb_make_path(ir->usbdev, ir->phys, sizeof(ir->phys));

 rc->device_name = ir->name;
 rc->input_phys = ir->phys;
 usb_to_input_id(ir->usbdev, &rc->input_id);
 rc->dev.parent = dev;
 rc->priv = ir;
 rc->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
 rc->min_timeout = US_TO_NS(MCE_TIME_UNIT);
 rc->timeout = MS_TO_NS(100);
 if (!mceusb_model[ir->model].broken_irtimeout) {
  rc->s_timeout = mceusb_set_timeout;
  rc->max_timeout = 10 * IR_DEFAULT_TIMEOUT;
 } else {




  rc->max_timeout = rc->timeout;
 }
 if (!ir->flags.no_tx) {
  rc->s_tx_mask = mceusb_set_tx_mask;
  rc->s_tx_carrier = mceusb_set_tx_carrier;
  rc->tx_ir = mceusb_tx_ir;
 }
 if (ir->flags.rx2 > 0) {
  rc->s_learning_mode = mceusb_set_rx_wideband;
  rc->s_carrier_report = mceusb_set_rx_carrier_report;
 }
 rc->driver_name = DRIVER_NAME;

 switch (le16_to_cpu(udev->descriptor.idVendor)) {
 case 129:
  rc->map_name = RC_MAP_HAUPPAUGE;
  break;
 case 128:
  rc->map_name = RC_MAP_PINNACLE_PCTV_HD;
  break;
 default:
  rc->map_name = RC_MAP_RC6_MCE;
 }
 if (mceusb_model[ir->model].rc_map)
  rc->map_name = mceusb_model[ir->model].rc_map;

 ret = rc_register_device(rc);
 if (ret < 0) {
  dev_err(dev, "remote dev registration failed");
  goto out;
 }

 return rc;

out:
 rc_free_device(rc);
 return ((void*)0);
}
