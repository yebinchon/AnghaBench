
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int dummy; } ;
struct mib_fw_version {int major; int minor; } ;
struct TYPE_2__ {scalar_t__ major; int minor; } ;
struct fwentry {TYPE_1__ fw_version; } ;
struct at76_priv {int board_type; int fw_version; } ;


 int DBG_DEVSTART ;
 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_DEBUG ;
 int MIB_FW_VERSION ;
 int OPMODE_HW_CONFIG_MODE ;
 int OPMODE_NORMAL_NIC_WITHOUT_FLASH ;
 int OPMODE_NORMAL_NIC_WITH_FLASH ;
 struct at76_priv* at76_alloc_new_device (struct usb_device*) ;
 int at76_dbg (int ,char*,int) ;
 int at76_delete_device (struct at76_priv*) ;
 int at76_get_mib (struct usb_device*,int ,struct mib_fw_version*,int) ;
 int at76_get_op_mode (struct usb_device*) ;
 int at76_init_new_device (struct at76_priv*,struct usb_interface*) ;
 int at76_load_external_fw (struct usb_device*,struct fwentry*) ;
 struct fwentry* at76_load_firmware (struct usb_device*,int) ;
 int at76_load_internal_fw (struct usb_device*,struct fwentry*) ;
 int dev_err (int *,char*,...) ;
 int dev_printk (int ,int *,char*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct mib_fw_version*) ;
 struct mib_fw_version* kmalloc (int,int ) ;
 int memcpy (int *,struct mib_fw_version*,int) ;
 struct usb_device* usb_get_dev (int ) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct at76_priv*) ;

__attribute__((used)) static int at76_probe(struct usb_interface *interface,
        const struct usb_device_id *id)
{
 int ret;
 struct at76_priv *priv;
 struct fwentry *fwe;
 struct usb_device *udev;
 int op_mode;
 int need_ext_fw = 0;
 struct mib_fw_version *fwv = ((void*)0);
 int board_type = (int)id->driver_info;

 udev = usb_get_dev(interface_to_usbdev(interface));

 fwv = kmalloc(sizeof(*fwv), GFP_KERNEL);
 if (!fwv) {
  ret = -ENOMEM;
  goto exit;
 }


 fwe = at76_load_firmware(udev, board_type);
 if (!fwe) {
  ret = -ENOENT;
  goto exit;
 }

 op_mode = at76_get_op_mode(udev);

 at76_dbg(DBG_DEVSTART, "opmode %d", op_mode);




 if (op_mode == OPMODE_HW_CONFIG_MODE) {
  dev_err(&interface->dev,
   "cannot handle a device in HW_CONFIG_MODE\n");
  ret = -EBUSY;
  goto exit;
 }

 if (op_mode != OPMODE_NORMAL_NIC_WITH_FLASH
     && op_mode != OPMODE_NORMAL_NIC_WITHOUT_FLASH) {

  dev_printk(KERN_DEBUG, &interface->dev,
      "downloading internal firmware\n");
  ret = at76_load_internal_fw(udev, fwe);
  if (ret < 0) {
   dev_err(&interface->dev,
    "error %d downloading internal firmware\n",
    ret);
  }
  goto exit;
 }
 if ((fwe->fw_version.major > 0 || fwe->fw_version.minor >= 100)
     || (op_mode == OPMODE_NORMAL_NIC_WITH_FLASH)) {
  ret = at76_get_mib(udev, MIB_FW_VERSION, fwv, sizeof(*fwv));
  if (ret < 0 || (fwv->major | fwv->minor) == 0)
   need_ext_fw = 1;
 } else

  need_ext_fw = 1;

 if (need_ext_fw) {
  dev_printk(KERN_DEBUG, &interface->dev,
      "downloading external firmware\n");

  ret = at76_load_external_fw(udev, fwe);
  if (ret < 0)
   goto exit;


  ret = at76_get_mib(udev, MIB_FW_VERSION, fwv, sizeof(*fwv));
  if (ret < 0) {
   dev_err(&interface->dev,
    "error %d getting firmware version\n", ret);
   goto exit;
  }
 }

 priv = at76_alloc_new_device(udev);
 if (!priv) {
  ret = -ENOMEM;
  goto exit;
 }

 usb_set_intfdata(interface, priv);

 memcpy(&priv->fw_version, fwv, sizeof(struct mib_fw_version));
 priv->board_type = board_type;

 ret = at76_init_new_device(priv, interface);
 if (ret < 0)
  at76_delete_device(priv);

exit:
 kfree(fwv);
 if (ret < 0)
  usb_put_dev(udev);
 return ret;
}
