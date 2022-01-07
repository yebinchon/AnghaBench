
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int dummy; } ;
struct net_device {int dummy; } ;


 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 int tsi108_read_mii (struct tsi108_prv_data*,int) ;

__attribute__((used)) static int tsi108_mdio_read(struct net_device *dev, int addr, int reg)
{
 struct tsi108_prv_data *data = netdev_priv(dev);
 return tsi108_read_mii(data, reg);
}
