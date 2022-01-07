
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {unsigned int base_addr; int name; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct TYPE_2__ {int ifrn_name; } ;
struct ifreq {TYPE_1__ ifr_ifrn; } ;
struct el3_private {int phys; int window_lock; } ;


 int EL3WINDOW (int) ;
 int EL3_CMD ;
 int EOPNOTSUPP ;



 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int inw (int ) ;
 int mdio_read (unsigned int,int,int) ;
 int mdio_write (unsigned int,int,int,int ) ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int pr_debug (char*,int ,int ,int,int,int,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int el3_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct el3_private *lp = netdev_priv(dev);
 unsigned int ioaddr = dev->base_addr;
 struct mii_ioctl_data *data = if_mii(rq);
 int phy = lp->phys & 0x1f;

 pr_debug("%s: In ioct(%-.6s, %#4.4x) %4.4x %4.4x %4.4x %4.4x.\n",
    dev->name, rq->ifr_ifrn.ifrn_name, cmd,
    data->phy_id, data->reg_num, data->val_in, data->val_out);

 switch(cmd) {
 case 130:
  data->phy_id = phy;

 case 129:
  {
   int saved_window;
   unsigned long flags;

   spin_lock_irqsave(&lp->window_lock, flags);
   saved_window = inw(ioaddr + EL3_CMD) >> 13;
   EL3WINDOW(4);
   data->val_out = mdio_read(ioaddr, data->phy_id & 0x1f,
        data->reg_num & 0x1f);
   EL3WINDOW(saved_window);
   spin_unlock_irqrestore(&lp->window_lock, flags);
   return 0;
  }
 case 128:
  {
   int saved_window;
                       unsigned long flags;

   spin_lock_irqsave(&lp->window_lock, flags);
   saved_window = inw(ioaddr + EL3_CMD) >> 13;
   EL3WINDOW(4);
   mdio_write(ioaddr, data->phy_id & 0x1f,
       data->reg_num & 0x1f, data->val_in);
   EL3WINDOW(saved_window);
   spin_unlock_irqrestore(&lp->window_lock, flags);
   return 0;
  }
 default:
  return -EOPNOTSUPP;
 }
}
