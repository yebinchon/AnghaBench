
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2400mu {TYPE_2__* notif_urb; TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int transfer_buffer; } ;
struct TYPE_4__ {struct device dev; } ;


 int d_fnend (int,struct device*,char*,struct i2400mu*) ;
 int d_fnstart (int,struct device*,char*,struct i2400mu*) ;
 int kfree (int ) ;
 int usb_free_urb (TYPE_2__*) ;
 int usb_kill_urb (TYPE_2__*) ;

void i2400mu_notification_release(struct i2400mu *i2400mu)
{
 struct device *dev = &i2400mu->usb_iface->dev;

 d_fnstart(4, dev, "(i2400mu %p)\n", i2400mu);
 if (i2400mu->notif_urb != ((void*)0)) {
  usb_kill_urb(i2400mu->notif_urb);
  kfree(i2400mu->notif_urb->transfer_buffer);
  usb_free_urb(i2400mu->notif_urb);
  i2400mu->notif_urb = ((void*)0);
 }
 d_fnend(4, dev, "(i2400mu %p)\n", i2400mu);
}
