
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int XGMAC_LINK_STATUS_REG ;
 int dsaf_read_dev (struct mac_driver*,int ) ;

__attribute__((used)) static void hns_xgmac_get_link_status(void *mac_drv, u32 *link_stat)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 *link_stat = dsaf_read_dev(drv, XGMAC_LINK_STATUS_REG);
}
