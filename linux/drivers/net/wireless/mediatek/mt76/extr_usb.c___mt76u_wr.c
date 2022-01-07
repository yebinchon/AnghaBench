
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mt76_usb {int reg_val; } ;
struct mt76_dev {struct mt76_usb usb; } ;
typedef int __le32 ;


 int MT_VEND_MULTI_WRITE ;

 int MT_VEND_TYPE_MASK ;
 int MT_VEND_WRITE_CFG ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int __mt76u_vendor_request (struct mt76_dev*,int ,int,int ,int,int *,int) ;
 int cpu_to_le32 (int) ;
 int trace_usb_reg_wr (struct mt76_dev*,int,int) ;

__attribute__((used)) static void __mt76u_wr(struct mt76_dev *dev, u32 addr, u32 val)
{
 struct mt76_usb *usb = &dev->usb;
 u16 offset;
 u8 req;

 switch (addr & MT_VEND_TYPE_MASK) {
 case 128:
  req = MT_VEND_WRITE_CFG;
  break;
 default:
  req = MT_VEND_MULTI_WRITE;
  break;
 }
 offset = addr & ~MT_VEND_TYPE_MASK;

 usb->reg_val = cpu_to_le32(val);
 __mt76u_vendor_request(dev, req,
          USB_DIR_OUT | USB_TYPE_VENDOR, 0,
          offset, &usb->reg_val, sizeof(__le32));
 trace_usb_reg_wr(dev, addr, val);
}
