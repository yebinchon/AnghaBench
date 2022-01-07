
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int needs_remote_wakeup; int dev; } ;
struct usb_device_id {int idProduct; int idVendor; } ;
struct usb_device {int devnum; TYPE_1__* bus; } ;
struct rtsx_ucr {int iobuf_dma; scalar_t__ iobuf; struct usb_device* pusb_dev; int sg_timer; struct usb_interface* pusb_intf; int dev_mutex; scalar_t__ rsp_buf; scalar_t__ cmd_buf; int product_id; int vendor_id; } ;
struct TYPE_2__ {int busnum; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IOBUF_SIZE ;
 int dev_dbg (int *,char*,int ,int ) ;
 struct rtsx_ucr* devm_kzalloc (int *,int,int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int mfd_add_hotplug_devices (int *,int ,int ) ;
 int mutex_init (int *) ;
 int rtsx_usb_cells ;
 int rtsx_usb_init_chip (struct rtsx_ucr*) ;
 int rtsx_usb_sg_timed_out ;
 int timer_setup (int *,int ,int ) ;
 scalar_t__ usb_alloc_coherent (struct usb_device*,int ,int ,int *) ;
 int usb_enable_autosuspend (struct usb_device*) ;
 int usb_free_coherent (struct usb_device*,int ,scalar_t__,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct rtsx_ucr*) ;

__attribute__((used)) static int rtsx_usb_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct usb_device *usb_dev = interface_to_usbdev(intf);
 struct rtsx_ucr *ucr;
 int ret;

 dev_dbg(&intf->dev,
  ": Realtek USB Card Reader found at bus %03d address %03d\n",
   usb_dev->bus->busnum, usb_dev->devnum);

 ucr = devm_kzalloc(&intf->dev, sizeof(*ucr), GFP_KERNEL);
 if (!ucr)
  return -ENOMEM;

 ucr->pusb_dev = usb_dev;

 ucr->iobuf = usb_alloc_coherent(ucr->pusb_dev, IOBUF_SIZE,
   GFP_KERNEL, &ucr->iobuf_dma);
 if (!ucr->iobuf)
  return -ENOMEM;

 usb_set_intfdata(intf, ucr);

 ucr->vendor_id = id->idVendor;
 ucr->product_id = id->idProduct;
 ucr->cmd_buf = ucr->rsp_buf = ucr->iobuf;

 mutex_init(&ucr->dev_mutex);

 ucr->pusb_intf = intf;


 ret = rtsx_usb_init_chip(ucr);
 if (ret)
  goto out_init_fail;


 timer_setup(&ucr->sg_timer, rtsx_usb_sg_timed_out, 0);

 ret = mfd_add_hotplug_devices(&intf->dev, rtsx_usb_cells,
          ARRAY_SIZE(rtsx_usb_cells));
 if (ret)
  goto out_init_fail;






 return 0;

out_init_fail:
 usb_free_coherent(ucr->pusb_dev, IOBUF_SIZE, ucr->iobuf,
   ucr->iobuf_dma);
 return ret;
}
