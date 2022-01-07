
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* status; int data; } ;
struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct huawei_cdc_ncm_state {struct usb_driver* subdriver; struct cdc_ncm_ctx* ctx; } ;
struct cdc_ncm_ctx {int control; } ;
struct TYPE_2__ {int desc; } ;


 int CDC_NCM_FLAG_NDP_TO_END ;
 int CDC_NCM_FLAG_RESET_NTB16 ;
 int ENODEV ;
 struct usb_driver* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct usb_driver*) ;
 int PTR_ERR (struct usb_driver*) ;
 int cdc_ncm_bind_common (struct usbnet*,struct usb_interface*,int,int) ;
 int cdc_ncm_unbind (struct usbnet*,struct usb_interface*) ;
 int huawei_cdc_ncm_wdm_manage_power ;
 struct usb_driver* usb_cdc_wdm_register (int ,int *,int,int ) ;

__attribute__((used)) static int huawei_cdc_ncm_bind(struct usbnet *usbnet_dev,
          struct usb_interface *intf)
{
 struct cdc_ncm_ctx *ctx;
 struct usb_driver *subdriver = ERR_PTR(-ENODEV);
 int ret = -ENODEV;
 struct huawei_cdc_ncm_state *drvstate = (void *)&usbnet_dev->data;
 int drvflags = 0;





 drvflags |= CDC_NCM_FLAG_NDP_TO_END;





 drvflags |= CDC_NCM_FLAG_RESET_NTB16;
 ret = cdc_ncm_bind_common(usbnet_dev, intf, 1, drvflags);
 if (ret)
  goto err;

 ctx = drvstate->ctx;

 if (usbnet_dev->status)




  subdriver = usb_cdc_wdm_register(ctx->control,
       &usbnet_dev->status->desc,
       1024,
       huawei_cdc_ncm_wdm_manage_power);
 if (IS_ERR(subdriver)) {
  ret = PTR_ERR(subdriver);
  cdc_ncm_unbind(usbnet_dev, intf);
  goto err;
 }


 usbnet_dev->status = ((void*)0);

 drvstate->subdriver = subdriver;

err:
 return ret;
}
