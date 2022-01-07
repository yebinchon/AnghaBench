
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int GMAC_PAUSE_EN_REG ;
 int GMAC_PAUSE_EN_RX_FDFC_B ;
 int dsaf_set_dev_bit (struct mac_driver*,int ,int ,int) ;

__attribute__((used)) static void hns_gmac_set_rx_auto_pause_frames(void *mac_drv, u32 newval)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 dsaf_set_dev_bit(drv, GMAC_PAUSE_EN_REG,
    GMAC_PAUSE_EN_RX_FDFC_B, !!newval);
}
