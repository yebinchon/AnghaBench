
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int data; } ;
struct usb_interface {int dummy; } ;
struct cdc_ncm_ctx {int control; } ;
struct cdc_mbim_state {TYPE_1__* subdriver; struct cdc_ncm_ctx* ctx; } ;
struct TYPE_2__ {int (* disconnect ) (int ) ;} ;


 int cdc_ncm_unbind (struct usbnet*,struct usb_interface*) ;
 int stub1 (int ) ;

__attribute__((used)) static void cdc_mbim_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 struct cdc_mbim_state *info = (void *)&dev->data;
 struct cdc_ncm_ctx *ctx = info->ctx;


 if (info->subdriver && info->subdriver->disconnect)
  info->subdriver->disconnect(ctx->control);
 info->subdriver = ((void*)0);


 cdc_ncm_unbind(dev, intf);
}
