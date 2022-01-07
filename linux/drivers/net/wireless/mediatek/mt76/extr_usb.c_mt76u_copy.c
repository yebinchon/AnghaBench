
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mt76_usb {int usb_ctrl_mtx; scalar_t__ data; } ;
struct mt76_dev {struct mt76_usb usb; } ;


 int DIV_ROUND_UP (int,int) ;
 int MT_VEND_MULTI_WRITE ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int __mt76u_vendor_request (struct mt76_dev*,int ,int,int ,scalar_t__,scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_unaligned (scalar_t__ const,scalar_t__*) ;

__attribute__((used)) static void mt76u_copy(struct mt76_dev *dev, u32 offset,
         const void *data, int len)
{
 struct mt76_usb *usb = &dev->usb;
 const u32 *val = data;
 int i, ret;

 mutex_lock(&usb->usb_ctrl_mtx);
 for (i = 0; i < DIV_ROUND_UP(len, 4); i++) {
  put_unaligned(val[i], (u32 *)usb->data);
  ret = __mt76u_vendor_request(dev, MT_VEND_MULTI_WRITE,
          USB_DIR_OUT | USB_TYPE_VENDOR,
          0, offset + i * 4, usb->data,
          sizeof(u32));
  if (ret < 0)
   break;
 }
 mutex_unlock(&usb->usb_ctrl_mtx);
}
