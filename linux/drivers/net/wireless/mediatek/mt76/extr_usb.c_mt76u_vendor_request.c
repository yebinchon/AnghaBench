
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int usb_ctrl_mtx; } ;
struct mt76_dev {TYPE_1__ usb; } ;


 int __mt76u_vendor_request (struct mt76_dev*,int ,int ,int ,int ,void*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_usb_reg_wr (struct mt76_dev*,int ,int ) ;

int mt76u_vendor_request(struct mt76_dev *dev, u8 req,
    u8 req_type, u16 val, u16 offset,
    void *buf, size_t len)
{
 int ret;

 mutex_lock(&dev->usb.usb_ctrl_mtx);
 ret = __mt76u_vendor_request(dev, req, req_type,
         val, offset, buf, len);
 trace_usb_reg_wr(dev, offset, val);
 mutex_unlock(&dev->usb.usb_ctrl_mtx);

 return ret;
}
