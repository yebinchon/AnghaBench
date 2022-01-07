
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ushc_int_data {int dummy; } ;
struct ushc_data {int caps; struct mmc_host* mmc; int * int_urb; TYPE_5__* csw; struct usb_device* usb_dev; int * csw_urb; int * data_urb; TYPE_5__* cbw; int * cbw_urb; int * int_data; int lock; } ;
struct ushc_csw {int dummy; } ;
struct ushc_cbw {int dummy; } ;
struct usb_interface {TYPE_4__* cur_altsetting; int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct mmc_host {int f_min; int f_max; int ocr_avail; int caps; int max_seg_size; int max_segs; int max_req_size; int max_blk_size; int max_blk_count; int * ops; } ;
struct TYPE_10__ {int signature; } ;
struct TYPE_6__ {int bNumEndpoints; } ;
struct TYPE_9__ {TYPE_3__* endpoint; TYPE_1__ desc; } ;
struct TYPE_7__ {int bInterval; int bEndpointAddress; } ;
struct TYPE_8__ {TYPE_2__ desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_SDIO_IRQ ;
 int MMC_CAP_SD_HIGHSPEED ;
 int MMC_VDD_32_33 ;
 int MMC_VDD_33_34 ;
 int USHC_CBW_SIGNATURE ;
 int USHC_GET_CAPS_HIGH_SPD ;
 int cbw_callback ;
 int csw_callback ;
 int int_callback ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 void* kzalloc (int,int ) ;
 int mmc_add_host (struct mmc_host*) ;
 struct mmc_host* mmc_alloc_host (int,int *) ;
 struct ushc_data* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 int spin_lock_init (int *) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (int *,struct usb_device*,int ,TYPE_5__*,int,int ,struct ushc_data*) ;
 int usb_fill_int_urb (int *,struct usb_device*,int ,int *,int,int ,struct ushc_data*,int ) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct ushc_data*) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;
 int usb_submit_urb (int *,int ) ;
 int ushc_clean_up (struct ushc_data*) ;
 int ushc_hw_get_caps (struct ushc_data*) ;
 int ushc_hw_reset (struct ushc_data*) ;
 int ushc_ops ;

__attribute__((used)) static int ushc_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 struct usb_device *usb_dev = interface_to_usbdev(intf);
 struct mmc_host *mmc;
 struct ushc_data *ushc;
 int ret;

 if (intf->cur_altsetting->desc.bNumEndpoints < 1)
  return -ENODEV;

 mmc = mmc_alloc_host(sizeof(struct ushc_data), &intf->dev);
 if (mmc == ((void*)0))
  return -ENOMEM;
 ushc = mmc_priv(mmc);
 usb_set_intfdata(intf, ushc);

 ushc->usb_dev = usb_dev;
 ushc->mmc = mmc;

 spin_lock_init(&ushc->lock);

 ret = ushc_hw_reset(ushc);
 if (ret < 0)
  goto err;


 ret = ushc_hw_get_caps(ushc);
 if (ret < 0)
  goto err;

 mmc->ops = &ushc_ops;

 mmc->f_min = 400000;
 mmc->f_max = 50000000;
 mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;
 mmc->caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SDIO_IRQ;
 mmc->caps |= (ushc->caps & USHC_GET_CAPS_HIGH_SPD) ? MMC_CAP_SD_HIGHSPEED : 0;

 mmc->max_seg_size = 512*511;
 mmc->max_segs = 1;
 mmc->max_req_size = 512*511;
 mmc->max_blk_size = 512;
 mmc->max_blk_count = 511;

 ushc->int_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (ushc->int_urb == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }
 ushc->int_data = kzalloc(sizeof(struct ushc_int_data), GFP_KERNEL);
 if (ushc->int_data == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }
 usb_fill_int_urb(ushc->int_urb, ushc->usb_dev,
    usb_rcvintpipe(usb_dev,
     intf->cur_altsetting->endpoint[0].desc.bEndpointAddress),
    ushc->int_data, sizeof(struct ushc_int_data),
    int_callback, ushc,
    intf->cur_altsetting->endpoint[0].desc.bInterval);

 ushc->cbw_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (ushc->cbw_urb == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }
 ushc->cbw = kzalloc(sizeof(struct ushc_cbw), GFP_KERNEL);
 if (ushc->cbw == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }
 ushc->cbw->signature = USHC_CBW_SIGNATURE;

 usb_fill_bulk_urb(ushc->cbw_urb, ushc->usb_dev, usb_sndbulkpipe(usb_dev, 2),
     ushc->cbw, sizeof(struct ushc_cbw),
     cbw_callback, ushc);

 ushc->data_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (ushc->data_urb == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }

 ushc->csw_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (ushc->csw_urb == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }
 ushc->csw = kzalloc(sizeof(struct ushc_csw), GFP_KERNEL);
 if (ushc->csw == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }
 usb_fill_bulk_urb(ushc->csw_urb, ushc->usb_dev, usb_rcvbulkpipe(usb_dev, 6),
     ushc->csw, sizeof(struct ushc_csw),
     csw_callback, ushc);

 ret = mmc_add_host(ushc->mmc);
 if (ret)
  goto err;

 ret = usb_submit_urb(ushc->int_urb, GFP_KERNEL);
 if (ret < 0) {
  mmc_remove_host(ushc->mmc);
  goto err;
 }

 return 0;

err:
 ushc_clean_up(ushc);
 return ret;
}
