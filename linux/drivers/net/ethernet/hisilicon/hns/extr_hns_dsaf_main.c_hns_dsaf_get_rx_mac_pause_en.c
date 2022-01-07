
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dsaf_ver; } ;


 scalar_t__ AE_IS_VER1 (int ) ;
 int DSAF_MAC_PAUSE_RX_EN_B ;
 scalar_t__ DSAF_PAUSE_CFG_REG ;
 int dsaf_get_dev_bit (struct dsaf_device*,scalar_t__,int ) ;

void hns_dsaf_get_rx_mac_pause_en(struct dsaf_device *dsaf_dev, int mac_id,
      u32 *en)
{
 if (AE_IS_VER1(dsaf_dev->dsaf_ver))
  *en = 1;
 else
  *en = dsaf_get_dev_bit(dsaf_dev,
           DSAF_PAUSE_CFG_REG + mac_id * 4,
           DSAF_MAC_PAUSE_RX_EN_B);
}
