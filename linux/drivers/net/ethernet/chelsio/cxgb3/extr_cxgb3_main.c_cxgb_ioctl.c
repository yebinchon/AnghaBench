
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mdio; } ;
struct port_info {TYPE_1__ phy; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; } ;
struct ifreq {int ifr_data; } ;
struct adapter {int dummy; } ;


 int EOPNOTSUPP ;




 int cxgb_extension_ioctl (struct net_device*,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int is_10G (struct adapter*) ;
 int mdio_mii_ioctl (int *,struct mii_ioctl_data*,int) ;
 int mdio_phy_id_c45 (int,int) ;
 int mdio_phy_id_is_c45 (int) ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cxgb_ioctl(struct net_device *dev, struct ifreq *req, int cmd)
{
 struct mii_ioctl_data *data = if_mii(req);
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;

 switch (cmd) {
 case 129:
 case 128:

  if (is_10G(adapter) &&
      !mdio_phy_id_is_c45(data->phy_id) &&
      (data->phy_id & 0x1f00) &&
      !(data->phy_id & 0xe0e0))
   data->phy_id = mdio_phy_id_c45(data->phy_id >> 8,
             data->phy_id & 0x1f);

 case 130:
  return mdio_mii_ioctl(&pi->phy.mdio, data, cmd);
 case 131:
  return cxgb_extension_ioctl(dev, req->ifr_data);
 default:
  return -EOPNOTSUPP;
 }
}
