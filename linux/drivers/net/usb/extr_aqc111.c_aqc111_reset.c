
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {int can_dma_sg; TYPE_1__* net; int udev; int rx_urb_size; struct aqc111_data* driver_priv; } ;
struct aqc111_data {int advertised_speed; int autoneg; int phy_cfg; } ;
struct TYPE_2__ {int* dev_addr; int vlan_features; int features; int hw_features; } ;


 int AQ_ACCESS_MAC ;
 int AQ_PHY_OPS ;
 int AQ_PHY_POWER_EN ;
 int AQ_SUPPORT_FEATURE ;
 int AQ_SUPPORT_HW_FEATURE ;
 int AQ_SUPPORT_VLAN_FEATURE ;
 int ETH_ALEN ;
 int SFR_BM_INT_MASK ;
 int SFR_MONITOR_MODE ;
 int SFR_MONITOR_MODE_EPHYRW ;
 int SFR_MONITOR_MODE_RWLC ;
 int SFR_MONITOR_MODE_RWMP ;
 int SFR_MONITOR_MODE_RWWF ;
 int SFR_MONITOR_MODE_RW_FLAG ;
 int SFR_NODE_ID ;
 int SFR_SWP_CTRL ;
 int URB_SIZE ;
 int aqc111_read_cmd (struct usbnet*,int ,int ,int,int,int*) ;
 int aqc111_set_phy_speed (struct usbnet*,int ,int ) ;
 int aqc111_write32_cmd (struct usbnet*,int ,int ,int ,int *) ;
 int aqc111_write_cmd (struct usbnet*,int ,int ,int,int,int*) ;
 int netif_carrier_off (TYPE_1__*) ;
 scalar_t__ usb_device_no_sg_constraint (int ) ;

__attribute__((used)) static int aqc111_reset(struct usbnet *dev)
{
 struct aqc111_data *aqc111_data = dev->driver_priv;
 u8 reg8 = 0;

 dev->rx_urb_size = URB_SIZE;

 if (usb_device_no_sg_constraint(dev->udev))
  dev->can_dma_sg = 1;

 dev->net->hw_features |= AQ_SUPPORT_HW_FEATURE;
 dev->net->features |= AQ_SUPPORT_FEATURE;
 dev->net->vlan_features |= AQ_SUPPORT_VLAN_FEATURE;


 aqc111_data->phy_cfg = AQ_PHY_POWER_EN;
 aqc111_write32_cmd(dev, AQ_PHY_OPS, 0, 0,
      &aqc111_data->phy_cfg);


 aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_NODE_ID, ETH_ALEN,
    ETH_ALEN, dev->net->dev_addr);

 reg8 = 0xFF;
 aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_BM_INT_MASK, 1, 1, &reg8);

 reg8 = 0x0;
 aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_SWP_CTRL, 1, 1, &reg8);

 aqc111_read_cmd(dev, AQ_ACCESS_MAC, SFR_MONITOR_MODE, 1, 1, &reg8);
 reg8 &= ~(SFR_MONITOR_MODE_EPHYRW | SFR_MONITOR_MODE_RWLC |
    SFR_MONITOR_MODE_RWMP | SFR_MONITOR_MODE_RWWF |
    SFR_MONITOR_MODE_RW_FLAG);
 aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_MONITOR_MODE, 1, 1, &reg8);

 netif_carrier_off(dev->net);


 aqc111_set_phy_speed(dev, aqc111_data->autoneg,
        aqc111_data->advertised_speed);

 return 0;
}
