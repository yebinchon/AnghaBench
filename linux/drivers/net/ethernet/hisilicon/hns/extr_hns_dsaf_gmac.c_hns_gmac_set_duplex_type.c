
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac_driver {int dummy; } ;


 int GMAC_DUPLEX_TYPE_B ;
 int GMAC_DUPLEX_TYPE_REG ;
 int dsaf_set_dev_bit (struct mac_driver*,int ,int ,int) ;

__attribute__((used)) static void hns_gmac_set_duplex_type(void *mac_drv, u8 newval)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 dsaf_set_dev_bit(drv, GMAC_DUPLEX_TYPE_REG,
    GMAC_DUPLEX_TYPE_B, !!newval);
}
