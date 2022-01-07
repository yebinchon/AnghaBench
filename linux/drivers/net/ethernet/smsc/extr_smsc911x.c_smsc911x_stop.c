
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smsc911x_data {int napi; } ;
struct TYPE_2__ {unsigned int rx_dropped; } ;
struct net_device {int * phydev; int irq; TYPE_1__ stats; } ;


 int INT_CFG ;
 unsigned int INT_CFG_IRQ_EN_ ;
 int RX_DROP ;
 int SMSC_TRACE (struct smsc911x_data*,int ,char*) ;
 int free_irq (int ,struct net_device*) ;
 int ifdown ;
 int napi_disable (int *) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (int *) ;
 int phy_stop (int *) ;
 unsigned int smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,unsigned int) ;
 int smsc911x_tx_update_txcounters (struct net_device*) ;

__attribute__((used)) static int smsc911x_stop(struct net_device *dev)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 unsigned int temp;


 temp = smsc911x_reg_read(pdata, INT_CFG);
 temp &= ~INT_CFG_IRQ_EN_;
 smsc911x_reg_write(pdata, INT_CFG, temp);


 netif_stop_queue(dev);
 napi_disable(&pdata->napi);


 dev->stats.rx_dropped += smsc911x_reg_read(pdata, RX_DROP);
 smsc911x_tx_update_txcounters(dev);

 free_irq(dev->irq, dev);


 if (dev->phydev) {
  phy_stop(dev->phydev);
  phy_disconnect(dev->phydev);
  dev->phydev = ((void*)0);
 }
 netif_carrier_off(dev);

 SMSC_TRACE(pdata, ifdown, "Interface stopped");
 return 0;
}
