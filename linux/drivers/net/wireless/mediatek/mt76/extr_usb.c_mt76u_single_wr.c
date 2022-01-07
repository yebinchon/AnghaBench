
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int usb_ctrl_mtx; } ;
struct mt76_dev {TYPE_1__ usb; } ;


 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int __mt76u_vendor_request (struct mt76_dev*,int const,int,int const,scalar_t__ const,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mt76u_single_wr(struct mt76_dev *dev, const u8 req,
       const u16 offset, const u32 val)
{
 mutex_lock(&dev->usb.usb_ctrl_mtx);
 __mt76u_vendor_request(dev, req,
          USB_DIR_OUT | USB_TYPE_VENDOR,
          val & 0xffff, offset, ((void*)0), 0);
 __mt76u_vendor_request(dev, req,
          USB_DIR_OUT | USB_TYPE_VENDOR,
          val >> 16, offset + 2, ((void*)0), 0);
 mutex_unlock(&dev->usb.usb_ctrl_mtx);
}
