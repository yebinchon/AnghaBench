
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct usbnet {struct aqc111_data* driver_priv; } ;
struct aqc111_data {int phy_cfg; } ;


 int AQ_ADV_100M ;
 int AQ_ADV_1G ;
 int AQ_ADV_2G5 ;
 int AQ_ADV_5G ;
 int AQ_ADV_MASK ;
 int AQ_ASYM_PAUSE ;
 int AQ_DOWNSHIFT ;
 int AQ_DSH_RETRIES_MASK ;
 int AQ_DSH_RETRIES_SHIFT ;
 int AQ_PAUSE ;
 int AQ_PHY_OPS ;
 scalar_t__ AUTONEG_ENABLE ;




 int aqc111_write32_cmd (struct usbnet*,int ,int ,int ,int*) ;

__attribute__((used)) static void aqc111_set_phy_speed(struct usbnet *dev, u8 autoneg, u16 speed)
{
 struct aqc111_data *aqc111_data = dev->driver_priv;

 aqc111_data->phy_cfg &= ~AQ_ADV_MASK;
 aqc111_data->phy_cfg |= AQ_PAUSE;
 aqc111_data->phy_cfg |= AQ_ASYM_PAUSE;
 aqc111_data->phy_cfg |= AQ_DOWNSHIFT;
 aqc111_data->phy_cfg &= ~AQ_DSH_RETRIES_MASK;
 aqc111_data->phy_cfg |= (3 << AQ_DSH_RETRIES_SHIFT) &
    AQ_DSH_RETRIES_MASK;

 if (autoneg == AUTONEG_ENABLE) {
  switch (speed) {
  case 128:
   aqc111_data->phy_cfg |= AQ_ADV_5G;

  case 129:
   aqc111_data->phy_cfg |= AQ_ADV_2G5;

  case 130:
   aqc111_data->phy_cfg |= AQ_ADV_1G;

  case 131:
   aqc111_data->phy_cfg |= AQ_ADV_100M;

  }
 } else {
  switch (speed) {
  case 128:
   aqc111_data->phy_cfg |= AQ_ADV_5G;
   break;
  case 129:
   aqc111_data->phy_cfg |= AQ_ADV_2G5;
   break;
  case 130:
   aqc111_data->phy_cfg |= AQ_ADV_1G;
   break;
  case 131:
   aqc111_data->phy_cfg |= AQ_ADV_100M;
   break;
  }
 }

 aqc111_write32_cmd(dev, AQ_PHY_OPS, 0, 0, &aqc111_data->phy_cfg);
}
