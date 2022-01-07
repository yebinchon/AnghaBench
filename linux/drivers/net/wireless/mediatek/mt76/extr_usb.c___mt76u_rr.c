
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


 int MT_VEND_MULTI_READ ;
 int MT_VEND_READ_CFG ;
 int MT_VEND_READ_EEPROM ;


 int MT_VEND_TYPE_MASK ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int __mt76u_vendor_request (struct mt76_dev*,int ,int,int ,int,int *,int) ;
 int le32_to_cpu (int ) ;
 int trace_usb_reg_rr (struct mt76_dev*,int,int) ;

__attribute__((used)) static u32 __mt76u_rr(struct mt76_dev *dev, u32 addr)
{
 struct mt76_usb *usb = &dev->usb;
 u32 data = ~0;
 u16 offset;
 int ret;
 u8 req;

 switch (addr & MT_VEND_TYPE_MASK) {
 case 128:
  req = MT_VEND_READ_EEPROM;
  break;
 case 129:
  req = MT_VEND_READ_CFG;
  break;
 default:
  req = MT_VEND_MULTI_READ;
  break;
 }
 offset = addr & ~MT_VEND_TYPE_MASK;

 ret = __mt76u_vendor_request(dev, req,
         USB_DIR_IN | USB_TYPE_VENDOR,
         0, offset, &usb->reg_val, sizeof(__le32));
 if (ret == sizeof(__le32))
  data = le32_to_cpu(usb->reg_val);
 trace_usb_reg_rr(dev, addr, data);

 return data;
}
