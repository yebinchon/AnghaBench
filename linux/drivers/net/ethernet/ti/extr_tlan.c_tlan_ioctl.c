
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tlan_priv {int* phy; size_t phy_num; int phy_online; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct ifreq {int dummy; } ;


 int EAGAIN ;
 int EOPNOTSUPP ;



 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int tlan_mii_read_reg (struct net_device*,int,int,int *) ;
 int tlan_mii_write_reg (struct net_device*,int,int,int ) ;

__attribute__((used)) static int tlan_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct tlan_priv *priv = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(rq);
 u32 phy = priv->phy[priv->phy_num];

 if (!priv->phy_online)
  return -EAGAIN;

 switch (cmd) {
 case 130:
  data->phy_id = phy;



 case 129:
  tlan_mii_read_reg(dev, data->phy_id & 0x1f,
      data->reg_num & 0x1f, &data->val_out);
  return 0;


 case 128:
  tlan_mii_write_reg(dev, data->phy_id & 0x1f,
       data->reg_num & 0x1f, data->val_in);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
