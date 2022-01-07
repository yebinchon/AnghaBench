
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__* data; } ;
struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct cdc_ncm_ctx {struct usb_interface* control; struct usb_interface* data; int bh; int tx_timer; int stop; } ;


 int atomic_set (int *,int) ;
 int cdc_ncm_free (struct cdc_ncm_ctx*) ;
 struct usb_driver* driver_of (struct usb_interface*) ;
 int hrtimer_cancel (int *) ;
 int tasklet_kill (int *) ;
 int usb_driver_release_interface (struct usb_driver*,struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

void cdc_ncm_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
 struct usb_driver *driver = driver_of(intf);

 if (ctx == ((void*)0))
  return;

 atomic_set(&ctx->stop, 1);

 hrtimer_cancel(&ctx->tx_timer);

 tasklet_kill(&ctx->bh);


 if (ctx->control == ctx->data)
  ctx->data = ((void*)0);


 if (intf == ctx->control && ctx->data) {
  usb_set_intfdata(ctx->data, ((void*)0));
  usb_driver_release_interface(driver, ctx->data);
  ctx->data = ((void*)0);

 } else if (intf == ctx->data && ctx->control) {
  usb_set_intfdata(ctx->control, ((void*)0));
  usb_driver_release_interface(driver, ctx->control);
  ctx->control = ((void*)0);
 }

 usb_set_intfdata(intf, ((void*)0));
 cdc_ncm_free(ctx);
}
