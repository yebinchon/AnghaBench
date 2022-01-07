
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int XGMAC_INT_ENABLE_REG ;
 int XGMAC_INT_STATUS_REG ;
 int dsaf_write_dev (struct mac_driver*,int ,int) ;

__attribute__((used)) static void hns_xgmac_exc_irq_en(struct mac_driver *drv, u32 en)
{
 u32 clr_vlue = 0xfffffffful;
 u32 msk_vlue = en ? 0xfffffffful : 0;

 dsaf_write_dev(drv, XGMAC_INT_STATUS_REG, clr_vlue);
 dsaf_write_dev(drv, XGMAC_INT_ENABLE_REG, msk_vlue);
}
