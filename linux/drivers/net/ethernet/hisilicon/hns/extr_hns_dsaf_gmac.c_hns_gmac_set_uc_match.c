
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mac_driver {int dummy; } ;


 int GMAC_ADDR_EN_B ;
 int GMAC_REC_FILT_CONTROL_REG ;
 int GMAC_STATION_ADDR_HIGH_2_REG ;
 int GMAC_UC_MATCH_EN_B ;
 int dsaf_set_dev_bit (struct mac_driver*,int ,int ,int) ;

__attribute__((used)) static void hns_gmac_set_uc_match(void *mac_drv, u16 en)
{
 struct mac_driver *drv = mac_drv;

 dsaf_set_dev_bit(drv, GMAC_REC_FILT_CONTROL_REG,
    GMAC_UC_MATCH_EN_B, !en);
 dsaf_set_dev_bit(drv, GMAC_STATION_ADDR_HIGH_2_REG,
    GMAC_ADDR_EN_B, !en);
}
