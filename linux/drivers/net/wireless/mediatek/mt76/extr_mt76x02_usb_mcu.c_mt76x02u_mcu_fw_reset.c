
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int mt76; } ;


 int MT_VEND_DEV_MODE ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int mt76u_vendor_request (int *,int ,int,int,int ,int *,int ) ;

void mt76x02u_mcu_fw_reset(struct mt76x02_dev *dev)
{
 mt76u_vendor_request(&dev->mt76, MT_VEND_DEV_MODE,
        USB_DIR_OUT | USB_TYPE_VENDOR,
        0x1, 0, ((void*)0), 0);
}
