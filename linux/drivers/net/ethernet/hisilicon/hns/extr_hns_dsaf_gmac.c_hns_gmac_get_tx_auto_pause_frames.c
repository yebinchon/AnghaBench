
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mac_driver {int dummy; } ;


 int GMAC_FC_TX_TIMER_M ;
 int GMAC_FC_TX_TIMER_REG ;
 int GMAC_FC_TX_TIMER_S ;
 int dsaf_get_dev_field (struct mac_driver*,int ,int ,int ) ;

__attribute__((used)) static void hns_gmac_get_tx_auto_pause_frames(void *mac_drv, u16 *newval)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 *newval = dsaf_get_dev_field(drv, GMAC_FC_TX_TIMER_REG,
         GMAC_FC_TX_TIMER_M, GMAC_FC_TX_TIMER_S);
}
