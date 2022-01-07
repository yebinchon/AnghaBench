
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsc911x_data {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct smsc911x_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static void smsc911x_ethtool_setmsglevel(struct net_device *dev, u32 level)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 pdata->msg_enable = level;
}
