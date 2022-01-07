
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int data; } ;
struct usb_interface {int dummy; } ;
struct huawei_cdc_ncm_state {TYPE_1__* subdriver; struct cdc_ncm_ctx* ctx; } ;
struct cdc_ncm_ctx {struct usb_interface* control; } ;
typedef int pm_message_t ;
struct TYPE_2__ {int (* suspend ) (struct usb_interface*,int ) ;} ;


 int ENODEV ;
 int stub1 (struct usb_interface*,int ) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_resume (struct usb_interface*) ;
 int usbnet_suspend (struct usb_interface*,int ) ;

__attribute__((used)) static int huawei_cdc_ncm_suspend(struct usb_interface *intf,
      pm_message_t message)
{
 int ret = 0;
 struct usbnet *usbnet_dev = usb_get_intfdata(intf);
 struct huawei_cdc_ncm_state *drvstate = (void *)&usbnet_dev->data;
 struct cdc_ncm_ctx *ctx = drvstate->ctx;

 if (ctx == ((void*)0)) {
  ret = -ENODEV;
  goto error;
 }

 ret = usbnet_suspend(intf, message);
 if (ret < 0)
  goto error;

 if (intf == ctx->control &&
  drvstate->subdriver &&
  drvstate->subdriver->suspend)
  ret = drvstate->subdriver->suspend(intf, message);
 if (ret < 0)
  usbnet_resume(intf);

error:
 return ret;
}
