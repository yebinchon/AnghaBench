
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_out; int phy_id; } ;
struct ifreq {int dummy; } ;
struct TYPE_6__ {int bmcr; int bmsr; int advertise; int lpa; int expansion; int ctrl1000; int stat1000; int estatus; } ;
struct TYPE_4__ {scalar_t__ media_type; int id; int addr; } ;
struct TYPE_5__ {TYPE_1__ phy; } ;
struct e1000_adapter {TYPE_3__ phy_regs; TYPE_2__ hw; } ;


 int EIO ;
 int EOPNOTSUPP ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_phy_read_status (struct e1000_adapter*) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
      int cmd)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct mii_ioctl_data *data = if_mii(ifr);

 if (adapter->hw.phy.media_type != e1000_media_type_copper)
  return -EOPNOTSUPP;

 switch (cmd) {
 case 130:
  data->phy_id = adapter->hw.phy.addr;
  break;
 case 129:
  e1000_phy_read_status(adapter);

  switch (data->reg_num & 0x1F) {
  case 139:
   data->val_out = adapter->phy_regs.bmcr;
   break;
  case 138:
   data->val_out = adapter->phy_regs.bmsr;
   break;
  case 133:
   data->val_out = (adapter->hw.phy.id >> 16);
   break;
  case 132:
   data->val_out = (adapter->hw.phy.id & 0xFFFF);
   break;
  case 140:
   data->val_out = adapter->phy_regs.advertise;
   break;
  case 134:
   data->val_out = adapter->phy_regs.lpa;
   break;
  case 135:
   data->val_out = adapter->phy_regs.expansion;
   break;
  case 137:
   data->val_out = adapter->phy_regs.ctrl1000;
   break;
  case 131:
   data->val_out = adapter->phy_regs.stat1000;
   break;
  case 136:
   data->val_out = adapter->phy_regs.estatus;
   break;
  default:
   return -EIO;
  }
  break;
 case 128:
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
