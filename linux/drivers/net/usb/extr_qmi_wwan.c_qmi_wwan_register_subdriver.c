
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usbnet {TYPE_2__* status; int data; } ;
struct usb_driver {int dummy; } ;
struct qmi_wwan_state {struct usb_driver* subdriver; TYPE_3__* control; int pmcount; TYPE_3__* data; } ;
struct TYPE_7__ {int dev; TYPE_1__* cur_altsetting; } ;
struct TYPE_6__ {int desc; } ;
struct TYPE_5__ {TYPE_2__* endpoint; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct usb_driver*) ;
 int PTR_ERR (struct usb_driver*) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*) ;
 int qmi_wwan_cdc_wdm_manage_power ;
 struct usb_driver* usb_cdc_wdm_register (TYPE_3__*,int *,int,int *) ;
 int usbnet_get_endpoints (struct usbnet*,TYPE_3__*) ;

__attribute__((used)) static int qmi_wwan_register_subdriver(struct usbnet *dev)
{
 int rv;
 struct usb_driver *subdriver = ((void*)0);
 struct qmi_wwan_state *info = (void *)&dev->data;


 rv = usbnet_get_endpoints(dev, info->data);
 if (rv < 0)
  goto err;


 if (info->control != info->data)
  dev->status = &info->control->cur_altsetting->endpoint[0];


 if (!dev->status) {
  rv = -EINVAL;
  goto err;
 }


 atomic_set(&info->pmcount, 0);


 subdriver = usb_cdc_wdm_register(info->control, &dev->status->desc,
      4096, &qmi_wwan_cdc_wdm_manage_power);
 if (IS_ERR(subdriver)) {
  dev_err(&info->control->dev, "subdriver registration failed\n");
  rv = PTR_ERR(subdriver);
  goto err;
 }


 dev->status = ((void*)0);


 info->subdriver = subdriver;

err:
 return rv;
}
