
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_nphy_pa_set_tx_dig_filter (struct b43_wldev*,int,int ) ;
 int * tbl_tx_filter_coef_rev4 ;

__attribute__((used)) static void b43_nphy_ext_pa_set_tx_dig_filters(struct b43_wldev *dev)
{
 b43_nphy_pa_set_tx_dig_filter(dev, 0x2C5,
          tbl_tx_filter_coef_rev4[2]);
}
