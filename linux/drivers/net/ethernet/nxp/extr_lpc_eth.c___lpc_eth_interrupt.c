
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netdata_local {int lock; int napi; int net_base; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LPC_ENET_INTCLEAR (int ) ;
 int LPC_ENET_INTSTATUS (int ) ;
 int __napi_schedule (int *) ;
 scalar_t__ likely (int ) ;
 int lpc_eth_disable_int (int ) ;
 int napi_schedule_prep (int *) ;
 struct netdata_local* netdev_priv (struct net_device*) ;
 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static irqreturn_t __lpc_eth_interrupt(int irq, void *dev_id)
{
 struct net_device *ndev = dev_id;
 struct netdata_local *pldat = netdev_priv(ndev);
 u32 tmp;

 spin_lock(&pldat->lock);

 tmp = readl(LPC_ENET_INTSTATUS(pldat->net_base));

 writel(tmp, LPC_ENET_INTCLEAR(pldat->net_base));

 lpc_eth_disable_int(pldat->net_base);
 if (likely(napi_schedule_prep(&pldat->napi)))
  __napi_schedule(&pldat->napi);

 spin_unlock(&pldat->lock);

 return IRQ_HANDLED;
}
