
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mt76_usb {int usb_ctrl_mtx; } ;
struct mt76_reg_pair {int value; scalar_t__ reg; } ;
struct mt76_dev {struct mt76_usb usb; } ;


 int __mt76u_wr (struct mt76_dev*,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mt76u_req_wr_rp(struct mt76_dev *dev, u32 base,
  const struct mt76_reg_pair *data, int len)
{
 struct mt76_usb *usb = &dev->usb;

 mutex_lock(&usb->usb_ctrl_mtx);
 while (len > 0) {
  __mt76u_wr(dev, base + data->reg, data->value);
  len--;
  data++;
 }
 mutex_unlock(&usb->usb_ctrl_mtx);

 return 0;
}
