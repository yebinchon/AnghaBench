
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mac_driver {int dummy; } ;


 int XGMAC_MAC_MAX_PKT_SIZE_REG ;
 int dsaf_write_dev (struct mac_driver*,int ,int ) ;

__attribute__((used)) static void hns_xgmac_config_max_frame_length(void *mac_drv, u16 newval)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 dsaf_write_dev(drv, XGMAC_MAC_MAX_PKT_SIZE_REG, newval);
}
