
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int net; struct aqc111_data* driver_priv; } ;
struct aqc111_data {int phy_cfg; } ;


 int AQ_ACCESS_MAC ;
 int AQ_LOW_POWER ;
 int AQ_PHY_OPS ;
 int SFR_MEDIUM_RECEIVE_EN ;
 int SFR_MEDIUM_STATUS_MODE ;
 int SFR_RX_CTL ;
 int aqc111_read16_cmd (struct usbnet*,int ,int ,int,int *) ;
 int aqc111_write16_cmd (struct usbnet*,int ,int ,int,int *) ;
 int aqc111_write32_cmd (struct usbnet*,int ,int ,int ,int *) ;
 int netif_carrier_off (int ) ;

__attribute__((used)) static int aqc111_stop(struct usbnet *dev)
{
 struct aqc111_data *aqc111_data = dev->driver_priv;
 u16 reg16 = 0;

 aqc111_read16_cmd(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
     2, &reg16);
 reg16 &= ~SFR_MEDIUM_RECEIVE_EN;
 aqc111_write16_cmd(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
      2, &reg16);
 reg16 = 0;
 aqc111_write16_cmd(dev, AQ_ACCESS_MAC, SFR_RX_CTL, 2, &reg16);


 aqc111_data->phy_cfg |= AQ_LOW_POWER;
 aqc111_write32_cmd(dev, AQ_PHY_OPS, 0, 0,
      &aqc111_data->phy_cfg);

 netif_carrier_off(dev->net);

 return 0;
}
