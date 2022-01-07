
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_in; int val_out; int phy_id; } ;
struct ifreq {int dummy; } ;
struct cas {int pm_mutex; int lock; int phy_addr; } ;


 int EOPNOTSUPP ;



 int cas_mif_poll (struct cas*,int) ;
 int cas_phy_read (struct cas*,int) ;
 int cas_phy_write (struct cas*,int,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cas* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cas_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct cas *cp = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(ifr);
 unsigned long flags;
 int rc = -EOPNOTSUPP;




 mutex_lock(&cp->pm_mutex);
 switch (cmd) {
 case 130:
  data->phy_id = cp->phy_addr;


 case 129:
  spin_lock_irqsave(&cp->lock, flags);
  cas_mif_poll(cp, 0);
  data->val_out = cas_phy_read(cp, data->reg_num & 0x1f);
  cas_mif_poll(cp, 1);
  spin_unlock_irqrestore(&cp->lock, flags);
  rc = 0;
  break;

 case 128:
  spin_lock_irqsave(&cp->lock, flags);
  cas_mif_poll(cp, 0);
  rc = cas_phy_write(cp, data->reg_num & 0x1f, data->val_in);
  cas_mif_poll(cp, 1);
  spin_unlock_irqrestore(&cp->lock, flags);
  break;
 default:
  break;
 }

 mutex_unlock(&cp->pm_mutex);
 return rc;
}
