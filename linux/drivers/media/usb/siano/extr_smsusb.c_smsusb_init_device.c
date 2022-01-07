
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct smsusb_device_t {int in_ep; int out_ep; int response_alignment; TYPE_6__* coredev; int state; TYPE_4__* surbs; TYPE_5__* udev; int buffer_size; } ;
struct smsdevice_params_t {int device_type; int devpath; struct smsusb_device_t* context; int sendrequest_handler; int num_buffers; int buffer_size; TYPE_5__* usb_device; int * device; int flags; int detectmode_handler; int setmode_handler; } ;
struct sms_msg_hdr {int dummy; } ;
typedef int params ;
struct TYPE_17__ {int type; } ;
struct TYPE_16__ {int is_usb_device; } ;
struct TYPE_15__ {int dev; } ;
struct TYPE_14__ {int urb; struct smsusb_device_t* dev; } ;
struct TYPE_11__ {int bNumEndpoints; } ;
struct TYPE_13__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_12__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_BUFFERS ;
 int MAX_URBS ;
 int SMSUSB_ACTIVE ;
 int SMSUSB_DISCONNECTED ;
 int SMS_DEVICE_FAMILY2 ;


 int USB1_BUFFER_SIZE ;
 int USB2_BUFFER_SIZE ;
 int USB_DIR_IN ;
 TYPE_5__* interface_to_usbdev (struct usb_interface*) ;
 int kfree (void*) ;
 struct smsusb_device_t* kzalloc (int,int ) ;
 int media_device_unregister (void*) ;
 int memset (struct smsdevice_params_t*,int ,int) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,...) ;
 void* siano_media_device_register (struct smsusb_device_t*,int) ;
 TYPE_9__* sms_get_board (int) ;
 int smscore_register_device (struct smsdevice_params_t*,TYPE_6__**,int ,void*) ;
 int smscore_set_board_id (TYPE_6__*,int) ;
 int smscore_start_device (TYPE_6__*) ;
 int smsusb1_detectmode ;
 int smsusb1_setmode ;
 int smsusb_sendrequest ;
 int smsusb_start_streaming (struct smsusb_device_t*) ;
 int smsusb_term_device (struct usb_interface*) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_init_urb (int *) ;
 int usb_make_path (TYPE_5__*,int ,int) ;
 int usb_set_intfdata (struct usb_interface*,struct smsusb_device_t*) ;

__attribute__((used)) static int smsusb_init_device(struct usb_interface *intf, int board_id)
{
 struct smsdevice_params_t params;
 struct smsusb_device_t *dev;
 void *mdev;
 int i, rc;
 int align = 0;


 dev = kzalloc(sizeof(struct smsusb_device_t), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 memset(&params, 0, sizeof(params));
 usb_set_intfdata(intf, dev);
 dev->udev = interface_to_usbdev(intf);
 dev->state = SMSUSB_DISCONNECTED;

 for (i = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
  struct usb_endpoint_descriptor *desc =
    &intf->cur_altsetting->endpoint[i].desc;

  if (desc->bEndpointAddress & USB_DIR_IN) {
   dev->in_ep = desc->bEndpointAddress;
   align = usb_endpoint_maxp(desc) - sizeof(struct sms_msg_hdr);
  } else {
   dev->out_ep = desc->bEndpointAddress;
  }
 }

 pr_debug("in_ep = %02x, out_ep = %02x\n", dev->in_ep, dev->out_ep);
 if (!dev->in_ep || !dev->out_ep || align < 0) {
  smsusb_term_device(intf);
  return -ENODEV;
 }

 params.device_type = sms_get_board(board_id)->type;

 switch (params.device_type) {
 case 129:
  dev->buffer_size = USB1_BUFFER_SIZE;

  params.setmode_handler = smsusb1_setmode;
  params.detectmode_handler = smsusb1_detectmode;
  break;
 case 128:
  pr_err("Unspecified sms device type!\n");

 default:
  dev->buffer_size = USB2_BUFFER_SIZE;
  dev->response_alignment = align;

  params.flags |= SMS_DEVICE_FAMILY2;
  break;
 }

 params.device = &dev->udev->dev;
 params.usb_device = dev->udev;
 params.buffer_size = dev->buffer_size;
 params.num_buffers = MAX_BUFFERS;
 params.sendrequest_handler = smsusb_sendrequest;
 params.context = dev;
 usb_make_path(dev->udev, params.devpath, sizeof(params.devpath));

 mdev = siano_media_device_register(dev, board_id);


 rc = smscore_register_device(&params, &dev->coredev, 0, mdev);
 if (rc < 0) {
  pr_err("smscore_register_device(...) failed, rc %d\n", rc);
  smsusb_term_device(intf);



  kfree(mdev);
  return rc;
 }

 smscore_set_board_id(dev->coredev, board_id);

 dev->coredev->is_usb_device = 1;


 for (i = 0; i < MAX_URBS; i++) {
  dev->surbs[i].dev = dev;
  usb_init_urb(&dev->surbs[i].urb);
 }

 pr_debug("smsusb_start_streaming(...).\n");
 rc = smsusb_start_streaming(dev);
 if (rc < 0) {
  pr_err("smsusb_start_streaming(...) failed\n");
  smsusb_term_device(intf);
  return rc;
 }

 dev->state = SMSUSB_ACTIVE;

 rc = smscore_start_device(dev->coredev);
 if (rc < 0) {
  pr_err("smscore_start_device(...) failed\n");
  smsusb_term_device(intf);
  return rc;
 }

 pr_debug("device 0x%p created\n", dev);

 return rc;
}
