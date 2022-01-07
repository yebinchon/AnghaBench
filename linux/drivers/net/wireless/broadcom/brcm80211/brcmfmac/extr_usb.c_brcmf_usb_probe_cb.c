
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct brcmf_usbdev_info {struct device* dev; int dev_init_done; int settings; } ;
struct brcmf_usbdev {int chiprev; int devid; struct brcmf_fw_request* bus; } ;
struct TYPE_2__ {struct brcmf_usbdev* usb; } ;
struct brcmf_fw_request {int always_use_fws_queue; int wowl_supported; int chiprev; int chip; struct device* dev; int proto_type; int * ops; TYPE_1__ bus_priv; } ;
struct brcmf_bus {int always_use_fws_queue; int wowl_supported; int chiprev; int chip; struct device* dev; int proto_type; int * ops; TYPE_1__ bus_priv; } ;


 int BRCMF_BUSTYPE_USB ;
 int BRCMF_PROTO_BCDC ;
 int BRCMF_USB_NRXQ ;
 int BRCMF_USB_NTXQ ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int USB ;
 int brcmf_alloc (struct device*,int ) ;
 int brcmf_attach (struct device*) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*,int) ;
 int brcmf_free (struct device*) ;
 int brcmf_fw_get_firmwares (struct device*,struct brcmf_fw_request*,int ) ;
 int brcmf_get_module_param (struct device*,int ,int ,int ) ;
 struct brcmf_usbdev* brcmf_usb_attach (struct brcmf_usbdev_info*,int ,int ) ;
 int brcmf_usb_bus_ops ;
 int brcmf_usb_detach (struct brcmf_usbdev_info*) ;
 int brcmf_usb_dlneeded (struct brcmf_usbdev_info*) ;
 struct brcmf_fw_request* brcmf_usb_prepare_fw_request (struct brcmf_usbdev_info*) ;
 int brcmf_usb_probe_phase2 ;
 int complete (int *) ;
 int dev_set_drvdata (struct device*,struct brcmf_fw_request*) ;
 int kfree (struct brcmf_fw_request*) ;
 struct brcmf_fw_request* kzalloc (int,int ) ;

__attribute__((used)) static int brcmf_usb_probe_cb(struct brcmf_usbdev_info *devinfo)
{
 struct brcmf_bus *bus = ((void*)0);
 struct brcmf_usbdev *bus_pub = ((void*)0);
 struct device *dev = devinfo->dev;
 struct brcmf_fw_request *fwreq;
 int ret;

 brcmf_dbg(USB, "Enter\n");
 bus_pub = brcmf_usb_attach(devinfo, BRCMF_USB_NRXQ, BRCMF_USB_NTXQ);
 if (!bus_pub)
  return -ENODEV;

 bus = kzalloc(sizeof(struct brcmf_bus), GFP_ATOMIC);
 if (!bus) {
  ret = -ENOMEM;
  goto fail;
 }

 bus->dev = dev;
 bus_pub->bus = bus;
 bus->bus_priv.usb = bus_pub;
 dev_set_drvdata(dev, bus);
 bus->ops = &brcmf_usb_bus_ops;
 bus->proto_type = BRCMF_PROTO_BCDC;
 bus->always_use_fws_queue = 1;




 devinfo->settings = brcmf_get_module_param(bus->dev, BRCMF_BUSTYPE_USB,
         bus_pub->devid,
         bus_pub->chiprev);
 if (!devinfo->settings) {
  ret = -ENOMEM;
  goto fail;
 }

 if (!brcmf_usb_dlneeded(devinfo)) {
  ret = brcmf_alloc(devinfo->dev, devinfo->settings);
  if (ret)
   goto fail;
  ret = brcmf_attach(devinfo->dev);
  if (ret)
   goto fail;

  complete(&devinfo->dev_init_done);
  return 0;
 }
 bus->chip = bus_pub->devid;
 bus->chiprev = bus_pub->chiprev;

 fwreq = brcmf_usb_prepare_fw_request(devinfo);
 if (!fwreq) {
  ret = -ENOMEM;
  goto fail;
 }


 ret = brcmf_fw_get_firmwares(dev, fwreq, brcmf_usb_probe_phase2);
 if (ret) {
  brcmf_err("firmware request failed: %d\n", ret);
  kfree(fwreq);
  goto fail;
 }

 return 0;

fail:

 brcmf_free(devinfo->dev);
 kfree(bus);
 brcmf_usb_detach(devinfo);
 return ret;
}
