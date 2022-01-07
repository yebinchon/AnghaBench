
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsc911x_data {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct smsc911x_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 smsc911x_ethtool_getmsglevel(struct net_device *dev)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 return pdata->msg_enable;
}
