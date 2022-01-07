
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {scalar_t__ phy_ok; } ;
struct net_device {int dummy; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 int phy_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tsi108_write_mii (struct tsi108_prv_data*,int ,int ) ;

__attribute__((used)) static void tsi108_kill_phy(struct net_device *dev)
{
 struct tsi108_prv_data *data = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&phy_lock, flags);
 tsi108_write_mii(data, MII_BMCR, BMCR_PDOWN);
 data->phy_ok = 0;
 spin_unlock_irqrestore(&phy_lock, flags);
}
