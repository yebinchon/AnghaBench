
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mac_driver {int dummy; } ;


 int GMAC_AN_NEG_STATE_REG ;
 int GMAC_AN_NEG_STAT_RX_SYNC_OK_B ;
 int dsaf_get_dev_bit (struct mac_driver*,int ,int ) ;

__attribute__((used)) static void hns_gmac_get_link_status(void *mac_drv, u32 *link_stat)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;

 *link_stat = dsaf_get_dev_bit(drv, GMAC_AN_NEG_STATE_REG,
          GMAC_AN_NEG_STAT_RX_SYNC_OK_B);
}
