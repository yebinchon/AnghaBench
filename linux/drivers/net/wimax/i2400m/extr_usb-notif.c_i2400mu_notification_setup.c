
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct TYPE_3__ {int notification; } ;
struct i2400mu {int notif_urb; int usb_dev; TYPE_1__ endpoint_cfg; TYPE_2__* usb_iface; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int I2400MU_MAX_NOTIFICATION_LEN ;
 int d_fnend (int,struct device*,char*,struct i2400mu*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400mu*) ;
 int dev_err (struct device*,char*,int) ;
 int i2400mu_notification_cb ;
 int kfree (char*) ;
 char* kmalloc (int ,int) ;
 int usb_alloc_urb (int ,int) ;
 int usb_fill_int_urb (int ,int ,int,char*,int ,int ,struct i2400mu*,int ) ;
 int usb_free_urb (int ) ;
 struct usb_endpoint_descriptor* usb_get_epd (TYPE_2__*,int ) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_submit_urb (int ,int) ;

int i2400mu_notification_setup(struct i2400mu *i2400mu)
{
 struct device *dev = &i2400mu->usb_iface->dev;
 int usb_pipe, ret = 0;
 struct usb_endpoint_descriptor *epd;
 char *buf;

 d_fnstart(4, dev, "(i2400m %p)\n", i2400mu);
 buf = kmalloc(I2400MU_MAX_NOTIFICATION_LEN, GFP_KERNEL | GFP_DMA);
 if (buf == ((void*)0)) {
  ret = -ENOMEM;
  goto error_buf_alloc;
 }

 i2400mu->notif_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!i2400mu->notif_urb) {
  ret = -ENOMEM;
  goto error_alloc_urb;
 }
 epd = usb_get_epd(i2400mu->usb_iface,
     i2400mu->endpoint_cfg.notification);
 usb_pipe = usb_rcvintpipe(i2400mu->usb_dev, epd->bEndpointAddress);
 usb_fill_int_urb(i2400mu->notif_urb, i2400mu->usb_dev, usb_pipe,
    buf, I2400MU_MAX_NOTIFICATION_LEN,
    i2400mu_notification_cb, i2400mu, epd->bInterval);
 ret = usb_submit_urb(i2400mu->notif_urb, GFP_KERNEL);
 if (ret != 0) {
  dev_err(dev, "notification: cannot submit URB: %d\n", ret);
  goto error_submit;
 }
 d_fnend(4, dev, "(i2400m %p) = %d\n", i2400mu, ret);
 return ret;

error_submit:
 usb_free_urb(i2400mu->notif_urb);
error_alloc_urb:
 kfree(buf);
error_buf_alloc:
 d_fnend(4, dev, "(i2400m %p) = %d\n", i2400mu, ret);
 return ret;
}
