
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_private {int timeout; int napi; } ;
struct net_device {int irq; } ;


 int INT_CAUSE ;
 int INT_MASK ;
 int INT_W_CLEAR ;
 int del_timer_sync (int *) ;
 int eth_port_reset (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct pxa168_eth_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int rxq_deinit (struct net_device*) ;
 int txq_deinit (struct net_device*) ;
 int wrl (struct pxa168_eth_private*,int ,int ) ;

__attribute__((used)) static int pxa168_eth_stop(struct net_device *dev)
{
 struct pxa168_eth_private *pep = netdev_priv(dev);
 eth_port_reset(dev);


 wrl(pep, INT_MASK, 0);
 wrl(pep, INT_CAUSE, 0);

 wrl(pep, INT_W_CLEAR, 0);
 napi_disable(&pep->napi);
 del_timer_sync(&pep->timeout);
 netif_carrier_off(dev);
 free_irq(dev->irq, dev);
 rxq_deinit(dev);
 txq_deinit(dev);

 return 0;
}
