
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ irq; int name; } ;
struct TYPE_2__ {int ipg_timer; } ;
struct amd8111e_priv {int options; int opened; int lock; TYPE_1__ ipg_data; int napi; } ;


 int EAGAIN ;
 int ENOMEM ;
 int IRQF_SHARED ;
 int OPTION_DYN_IPG_ENABLE ;
 int add_timer (int *) ;
 int amd8111e_init_hw_default (struct amd8111e_priv*) ;
 int amd8111e_interrupt ;
 scalar_t__ amd8111e_restart (struct net_device*) ;
 int free_irq (scalar_t__,struct net_device*) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int netdev_info (struct net_device*,char*) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ request_irq (scalar_t__,int ,int ,int ,struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int amd8111e_open(struct net_device *dev)
{
 struct amd8111e_priv *lp = netdev_priv(dev);

 if(dev->irq ==0 || request_irq(dev->irq, amd8111e_interrupt, IRQF_SHARED,
      dev->name, dev))
  return -EAGAIN;

 napi_enable(&lp->napi);

 spin_lock_irq(&lp->lock);

 amd8111e_init_hw_default(lp);

 if(amd8111e_restart(dev)){
  spin_unlock_irq(&lp->lock);
  napi_disable(&lp->napi);
  if (dev->irq)
   free_irq(dev->irq, dev);
  return -ENOMEM;
 }

 if(lp->options & OPTION_DYN_IPG_ENABLE){
  add_timer(&lp->ipg_data.ipg_timer);
  netdev_info(dev, "Dynamic IPG Enabled\n");
 }

 lp->opened = 1;

 spin_unlock_irq(&lp->lock);

 netif_start_queue(dev);

 return 0;
}
