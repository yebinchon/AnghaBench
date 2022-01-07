
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int data; } ;
struct usb_interface {int dummy; } ;
struct huawei_cdc_ncm_state {TYPE_1__* subdriver; struct cdc_ncm_ctx* ctx; } ;
struct cdc_ncm_ctx {int control; } ;
struct TYPE_2__ {int (* disconnect ) (int ) ;} ;


 int cdc_ncm_unbind (struct usbnet*,struct usb_interface*) ;
 int stub1 (int ) ;

__attribute__((used)) static void huawei_cdc_ncm_unbind(struct usbnet *usbnet_dev,
      struct usb_interface *intf)
{
 struct huawei_cdc_ncm_state *drvstate = (void *)&usbnet_dev->data;
 struct cdc_ncm_ctx *ctx = drvstate->ctx;

 if (drvstate->subdriver && drvstate->subdriver->disconnect)
  drvstate->subdriver->disconnect(ctx->control);
 drvstate->subdriver = ((void*)0);

 cdc_ncm_unbind(usbnet_dev, intf);
}
