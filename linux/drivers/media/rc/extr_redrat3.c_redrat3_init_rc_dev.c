
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct redrat3_dev {TYPE_3__* udev; int phys; int name; struct device* dev; } ;
struct TYPE_6__ {struct device* parent; } ;
struct rc_dev {int map_name; void* rx_resolution; int driver_name; int s_carrier_report; int s_tx_carrier; int tx_ir; int s_timeout; void* timeout; void* max_timeout; void* min_timeout; int allowed_protocols; struct redrat3_dev* priv; TYPE_2__ dev; int input_id; int input_phys; int device_name; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int idProduct; } ;
struct TYPE_7__ {TYPE_1__ descriptor; } ;


 int DRIVER_NAME ;
 void* MS_TO_NS (int ) ;
 int RC_DRIVER_IR_RAW ;
 int RC_MAP_HAUPPAUGE ;
 int RC_PROTO_BIT_ALL_IR_DECODER ;
 int RR3_RX_MAX_TIMEOUT ;
 int RR3_RX_MIN_TIMEOUT ;
 scalar_t__ USB_RR3IIUSB_PRODUCT_ID ;
 void* US_TO_NS (int) ;
 int dev_err (struct device*,char*) ;
 scalar_t__ le16_to_cpu (int ) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int redrat3_get_timeout (struct redrat3_dev*) ;
 int redrat3_set_timeout ;
 int redrat3_set_tx_carrier ;
 int redrat3_transmit_ir ;
 int redrat3_wideband_receiver ;
 int snprintf (int ,int,char*,char*) ;
 int usb_make_path (TYPE_3__*,int ,int) ;
 int usb_to_input_id (TYPE_3__*,int *) ;

__attribute__((used)) static struct rc_dev *redrat3_init_rc_dev(struct redrat3_dev *rr3)
{
 struct device *dev = rr3->dev;
 struct rc_dev *rc;
 int ret;
 u16 prod = le16_to_cpu(rr3->udev->descriptor.idProduct);

 rc = rc_allocate_device(RC_DRIVER_IR_RAW);
 if (!rc)
  return ((void*)0);

 snprintf(rr3->name, sizeof(rr3->name),
   "RedRat3%s Infrared Remote Transceiver",
   prod == USB_RR3IIUSB_PRODUCT_ID ? "-II" : "");

 usb_make_path(rr3->udev, rr3->phys, sizeof(rr3->phys));

 rc->device_name = rr3->name;
 rc->input_phys = rr3->phys;
 usb_to_input_id(rr3->udev, &rc->input_id);
 rc->dev.parent = dev;
 rc->priv = rr3;
 rc->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
 rc->min_timeout = MS_TO_NS(RR3_RX_MIN_TIMEOUT);
 rc->max_timeout = MS_TO_NS(RR3_RX_MAX_TIMEOUT);
 rc->timeout = US_TO_NS(redrat3_get_timeout(rr3));
 rc->s_timeout = redrat3_set_timeout;
 rc->tx_ir = redrat3_transmit_ir;
 rc->s_tx_carrier = redrat3_set_tx_carrier;
 rc->s_carrier_report = redrat3_wideband_receiver;
 rc->driver_name = DRIVER_NAME;
 rc->rx_resolution = US_TO_NS(2);
 rc->map_name = RC_MAP_HAUPPAUGE;

 ret = rc_register_device(rc);
 if (ret < 0) {
  dev_err(dev, "remote dev registration failed\n");
  goto out;
 }

 return rc;

out:
 rc_free_device(rc);
 return ((void*)0);
}
