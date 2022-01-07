
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; } ;
struct mii_ioctl_data {int reg_num; int val_in; int phy_id; int val_out; } ;
struct ifreq {int dummy; } ;
struct axnet_dev {int phy_id; } ;


 unsigned int AXNET_MII_EEP ;
 int EOPNOTSUPP ;
 struct axnet_dev* PRIV (struct net_device*) ;



 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mdio_read (unsigned int,int ,int) ;
 int mdio_write (unsigned int,int ,int,int ) ;

__attribute__((used)) static int axnet_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
    struct axnet_dev *info = PRIV(dev);
    struct mii_ioctl_data *data = if_mii(rq);
    unsigned int mii_addr = dev->base_addr + AXNET_MII_EEP;
    switch (cmd) {
    case 130:
 data->phy_id = info->phy_id;

    case 129:
 data->val_out = mdio_read(mii_addr, data->phy_id, data->reg_num & 0x1f);
 return 0;
    case 128:
 mdio_write(mii_addr, data->phy_id, data->reg_num & 0x1f, data->val_in);
 return 0;
    }
    return -EOPNOTSUPP;
}
