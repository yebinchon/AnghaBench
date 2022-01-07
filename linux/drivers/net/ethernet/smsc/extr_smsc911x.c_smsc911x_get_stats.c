
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int dummy; } ;
struct net_device_stats {int rx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;


 int RX_DROP ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 scalar_t__ smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_tx_update_txcounters (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *smsc911x_get_stats(struct net_device *dev)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 smsc911x_tx_update_txcounters(dev);
 dev->stats.rx_dropped += smsc911x_reg_read(pdata, RX_DROP);
 return &dev->stats;
}
