
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mac_driver {int dummy; } ;


 int GAMC_RX_MAX_FRAME ;
 int GMAC_MAX_FRM_SIZE_M ;
 int GMAC_MAX_FRM_SIZE_REG ;
 int GMAC_MAX_FRM_SIZE_S ;
 int dsaf_set_dev_field (struct mac_driver*,int ,int ,int ,int ) ;

__attribute__((used)) static void hns_gmac_config_max_frame_length(void *mac_drv, u16 newval)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 dsaf_set_dev_field(drv, GMAC_MAX_FRM_SIZE_REG, GMAC_MAX_FRM_SIZE_M,
      GMAC_MAX_FRM_SIZE_S, newval);

 dsaf_set_dev_field(drv, GAMC_RX_MAX_FRAME, GMAC_MAX_FRM_SIZE_M,
      GMAC_MAX_FRM_SIZE_S, newval);
}
