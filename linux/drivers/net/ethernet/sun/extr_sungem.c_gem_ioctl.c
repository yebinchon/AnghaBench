
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct ifreq {int dummy; } ;
struct gem {int mii_phy_addr; } ;


 int EOPNOTSUPP ;



 int __sungem_phy_read (struct gem*,int,int) ;
 int __sungem_phy_write (struct gem*,int,int,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct gem* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gem_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct gem *gp = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(ifr);
 int rc = -EOPNOTSUPP;






 switch (cmd) {
 case 130:
  data->phy_id = gp->mii_phy_addr;


 case 129:
  data->val_out = __sungem_phy_read(gp, data->phy_id & 0x1f,
        data->reg_num & 0x1f);
  rc = 0;
  break;

 case 128:
  __sungem_phy_write(gp, data->phy_id & 0x1f, data->reg_num & 0x1f,
       data->val_in);
  rc = 0;
  break;
 }
 return rc;
}
