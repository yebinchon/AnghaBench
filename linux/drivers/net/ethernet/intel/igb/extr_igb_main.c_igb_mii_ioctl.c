
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_out; int phy_id; } ;
struct TYPE_3__ {scalar_t__ media_type; int addr; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct igb_adapter {TYPE_2__ hw; } ;
struct ifreq {int dummy; } ;


 int EIO ;
 int EOPNOTSUPP ;



 scalar_t__ e1000_media_type_copper ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int igb_read_phy_reg (TYPE_2__*,int,int *) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_mii_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct mii_ioctl_data *data = if_mii(ifr);

 if (adapter->hw.phy.media_type != e1000_media_type_copper)
  return -EOPNOTSUPP;

 switch (cmd) {
 case 130:
  data->phy_id = adapter->hw.phy.addr;
  break;
 case 129:
  if (igb_read_phy_reg(&adapter->hw, data->reg_num & 0x1F,
         &data->val_out))
   return -EIO;
  break;
 case 128:
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
