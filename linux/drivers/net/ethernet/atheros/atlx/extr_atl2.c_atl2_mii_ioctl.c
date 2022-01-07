
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_in; int val_out; int phy_id; } ;
struct ifreq {int dummy; } ;
struct atl2_adapter {int stats_lock; int hw; } ;


 int EFAULT ;
 int EIO ;
 int EOPNOTSUPP ;



 int atl2_read_phy_reg (int *,int,int *) ;
 int atl2_write_phy_reg (int *,int,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int atl2_mii_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);
 struct mii_ioctl_data *data = if_mii(ifr);
 unsigned long flags;

 switch (cmd) {
 case 130:
  data->phy_id = 0;
  break;
 case 129:
  spin_lock_irqsave(&adapter->stats_lock, flags);
  if (atl2_read_phy_reg(&adapter->hw,
   data->reg_num & 0x1F, &data->val_out)) {
   spin_unlock_irqrestore(&adapter->stats_lock, flags);
   return -EIO;
  }
  spin_unlock_irqrestore(&adapter->stats_lock, flags);
  break;
 case 128:
  if (data->reg_num & ~(0x1F))
   return -EFAULT;
  spin_lock_irqsave(&adapter->stats_lock, flags);
  if (atl2_write_phy_reg(&adapter->hw, data->reg_num,
   data->val_in)) {
   spin_unlock_irqrestore(&adapter->stats_lock, flags);
   return -EIO;
  }
  spin_unlock_irqrestore(&adapter->stats_lock, flags);
  break;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
