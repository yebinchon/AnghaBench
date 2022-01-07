
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct dvb_usb_device {TYPE_2__* udev; } ;
struct TYPE_3__ {int idProduct; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;


 int ARM_TRANSFER ;
 int BOOT_8PSK ;
 int CW3K_INIT ;
 int EINVAL ;
 int GET_8PSK_CONFIG ;
 int SET_DVB_MODE ;
 int START_INTERSIL ;
 int USB_PID_GENPIX_8PSK_REV_1_WARM ;
 int USB_PID_GENPIX_SKYWALKER_CW3K ;
 int bm8pskFW_Loaded ;
 int bm8pskStarted ;
 int bmIntersilOn ;
 int gp8psk_info (struct dvb_usb_device*) ;
 scalar_t__ gp8psk_load_bcm4500fw (struct dvb_usb_device*) ;
 scalar_t__ gp8psk_usb_in_op (struct dvb_usb_device*,int ,int,int ,int*,int) ;
 scalar_t__ gp8psk_usb_out_op (struct dvb_usb_device*,int ,int,int ,int *,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int gp8psk_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 u8 status, buf;
 int gp_product_id = le16_to_cpu(d->udev->descriptor.idProduct);

 if (onoff) {
  gp8psk_usb_in_op(d, GET_8PSK_CONFIG,0,0,&status,1);
  if (! (status & bm8pskStarted)) {
   if(gp_product_id == USB_PID_GENPIX_SKYWALKER_CW3K)
    gp8psk_usb_out_op(d, CW3K_INIT, 1, 0, ((void*)0), 0);
   if (gp8psk_usb_in_op(d, BOOT_8PSK, 1, 0, &buf, 1))
    return -EINVAL;
   gp8psk_info(d);
  }

  if (gp_product_id == USB_PID_GENPIX_8PSK_REV_1_WARM)
   if (! (status & bm8pskFW_Loaded))
    if(gp8psk_load_bcm4500fw(d))
     return -EINVAL;

  if (! (status & bmIntersilOn))
   if (gp8psk_usb_in_op(d, START_INTERSIL, 1, 0,
     &buf, 1))
    return -EINVAL;


  if (gp_product_id == USB_PID_GENPIX_8PSK_REV_1_WARM)
   if (gp8psk_usb_out_op(d, SET_DVB_MODE, 1, 0, ((void*)0), 0))
    return -EINVAL;

  if (gp8psk_usb_out_op(d, ARM_TRANSFER, 0, 0, ((void*)0), 0))
   return -EINVAL;
 } else {

  if (gp8psk_usb_in_op(d, START_INTERSIL, 0, 0, &buf, 1))
   return -EINVAL;

  if (gp8psk_usb_in_op(d, BOOT_8PSK, 0, 0, &buf, 1))
   return -EINVAL;
  if(gp_product_id == USB_PID_GENPIX_SKYWALKER_CW3K)
   gp8psk_usb_out_op(d, CW3K_INIT, 0, 0, ((void*)0), 0);
 }
 return 0;
}
