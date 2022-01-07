
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct si470x_device {int int_in_running; int status_rssi_auto_update; int hdl; TYPE_2__* intf; int int_in_urb; TYPE_1__* int_in_endpoint; int int_in_buffer; int usbdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int bInterval; int wMaxPacketSize; int bEndpointAddress; } ;


 int GFP_KERNEL ;
 int dev_info (int *,char*,int) ;
 int le16_to_cpu (int ) ;
 int mb () ;
 int si470x_int_in_callback ;
 int si470x_start (struct si470x_device*) ;
 int usb_fill_int_urb (int ,int ,int ,int ,int ,int ,struct si470x_device*,int ) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_submit_urb (int ,int ) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int si470x_start_usb(struct si470x_device *radio)
{
 int retval;


 usb_fill_int_urb(radio->int_in_urb, radio->usbdev,
   usb_rcvintpipe(radio->usbdev,
    radio->int_in_endpoint->bEndpointAddress),
   radio->int_in_buffer,
   le16_to_cpu(radio->int_in_endpoint->wMaxPacketSize),
   si470x_int_in_callback,
   radio,
   radio->int_in_endpoint->bInterval);

 radio->int_in_running = 1;
 mb();

 retval = usb_submit_urb(radio->int_in_urb, GFP_KERNEL);
 if (retval) {
  dev_info(&radio->intf->dev,
    "submitting int urb failed (%d)\n", retval);
  radio->int_in_running = 0;
 }
 radio->status_rssi_auto_update = radio->int_in_running;


 retval = si470x_start(radio);
 if (retval < 0)
  return retval;

 v4l2_ctrl_handler_setup(&radio->hdl);

 return retval;
}
