
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct device {int dummy; } ;
struct usb_device {struct device dev; } ;
struct p54u_priv {TYPE_1__* udev; int fw_wait_load; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;
struct TYPE_5__ {int fw; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ ARRAY_SIZE (TYPE_2__*) ;
 int BUILD_BUG_ON (int) ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 scalar_t__ __NUM_P54U_HWTYPES ;
 int dev_err (int *,char*,int ,int) ;
 int dev_info (int *,char*,int ) ;
 int init_completion (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int p54_find_type (struct p54u_priv*) ;
 TYPE_2__* p54u_fwlist ;
 int p54u_load_firmware_cb ;
 int request_firmware_nowait (int ,int,int ,struct device*,int ,struct p54u_priv*,int ) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_put_intf (struct usb_interface*) ;

__attribute__((used)) static int p54u_load_firmware(struct ieee80211_hw *dev,
         struct usb_interface *intf)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct p54u_priv *priv = dev->priv;
 struct device *device = &udev->dev;
 int err, i;

 BUILD_BUG_ON(ARRAY_SIZE(p54u_fwlist) != __NUM_P54U_HWTYPES);

 init_completion(&priv->fw_wait_load);
 i = p54_find_type(priv);
 if (i < 0)
  return i;

 dev_info(&priv->udev->dev, "Loading firmware file %s\n",
        p54u_fwlist[i].fw);

 usb_get_intf(intf);
 err = request_firmware_nowait(THIS_MODULE, 1, p54u_fwlist[i].fw,
          device, GFP_KERNEL, priv,
          p54u_load_firmware_cb);
 if (err) {
  dev_err(&priv->udev->dev, "(p54usb) cannot load firmware %s "
       "(%d)!\n", p54u_fwlist[i].fw, err);
  usb_put_intf(intf);
 }

 return err;
}
