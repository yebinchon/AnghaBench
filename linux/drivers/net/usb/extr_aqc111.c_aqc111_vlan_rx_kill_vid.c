
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int AQ_ACCESS_MAC ;
 int SFR_VLAN_CONTROL_RD ;
 int SFR_VLAN_CONTROL_WE ;
 int SFR_VLAN_ID_ADDRESS ;
 int SFR_VLAN_ID_CONTROL ;
 int SFR_VLAN_ID_DATA0 ;
 int aqc111_read16_cmd (struct usbnet*,int ,int ,int,int*) ;
 int aqc111_read_cmd (struct usbnet*,int ,int ,int,int,int*) ;
 int aqc111_write16_cmd (struct usbnet*,int ,int ,int,int*) ;
 int aqc111_write_cmd (struct usbnet*,int ,int ,int,int,int*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aqc111_vlan_rx_kill_vid(struct net_device *net,
       __be16 proto, u16 vid)
{
 struct usbnet *dev = netdev_priv(net);
 u8 vlan_ctrl = 0;
 u16 reg16 = 0;
 u8 reg8 = 0;

 aqc111_read_cmd(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_CONTROL, 1, 1, &reg8);
 vlan_ctrl = reg8;


 reg8 = (vid / 16);
 aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_ADDRESS, 1, 1, &reg8);

 reg8 = vlan_ctrl | SFR_VLAN_CONTROL_RD;
 aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_CONTROL, 1, 1, &reg8);
 aqc111_read16_cmd(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_DATA0, 2, &reg16);
 reg16 &= ~(1 << (vid % 16));
 aqc111_write16_cmd(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_DATA0, 2, &reg16);
 reg8 = vlan_ctrl | SFR_VLAN_CONTROL_WE;
 aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_CONTROL, 1, 1, &reg8);

 return 0;
}
