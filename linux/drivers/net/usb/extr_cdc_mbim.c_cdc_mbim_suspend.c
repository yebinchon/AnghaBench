
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int data; } ;
struct usb_interface {int dummy; } ;
struct cdc_ncm_ctx {struct usb_interface* control; } ;
struct cdc_mbim_state {TYPE_1__* subdriver; struct cdc_ncm_ctx* ctx; } ;
typedef int pm_message_t ;
struct TYPE_2__ {int (* suspend ) (struct usb_interface*,int ) ;} ;


 int ENODEV ;
 int stub1 (struct usb_interface*,int ) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_resume (struct usb_interface*) ;
 int usbnet_suspend (struct usb_interface*,int ) ;

__attribute__((used)) static int cdc_mbim_suspend(struct usb_interface *intf, pm_message_t message)
{
 int ret = -ENODEV;
 struct usbnet *dev = usb_get_intfdata(intf);
 struct cdc_mbim_state *info = (void *)&dev->data;
 struct cdc_ncm_ctx *ctx = info->ctx;

 if (!ctx)
  goto error;






 ret = usbnet_suspend(intf, message);
 if (ret < 0)
  goto error;

 if (intf == ctx->control && info->subdriver && info->subdriver->suspend)
  ret = info->subdriver->suspend(intf, message);
 if (ret < 0)
  usbnet_resume(intf);

error:
 return ret;
}
