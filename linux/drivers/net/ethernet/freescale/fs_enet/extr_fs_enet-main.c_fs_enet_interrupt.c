
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct fs_platform_info {int dummy; } ;
struct fs_enet_private {int ev_napi; int ev_err; int ev; int napi; TYPE_1__* ops; struct fs_platform_info* fpi; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* get_int_events ) (struct net_device*) ;int (* clear_int_events ) (struct net_device*,int) ;int (* napi_disable ) (struct net_device*) ;int (* ev_error ) (struct net_device*,int) ;} ;


 int IRQ_RETVAL (int) ;
 int __napi_schedule (int *) ;
 int napi_schedule_prep (int *) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*,int) ;
 int stub3 (struct net_device*,int) ;
 int stub4 (struct net_device*) ;
 int stub5 (struct net_device*,int) ;

__attribute__((used)) static irqreturn_t
fs_enet_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct fs_enet_private *fep;
 const struct fs_platform_info *fpi;
 u32 int_events;
 u32 int_clr_events;
 int nr, napi_ok;
 int handled;

 fep = netdev_priv(dev);
 fpi = fep->fpi;

 nr = 0;
 while ((int_events = (*fep->ops->get_int_events)(dev)) != 0) {
  nr++;

  int_clr_events = int_events;
  int_clr_events &= ~fep->ev_napi;

  (*fep->ops->clear_int_events)(dev, int_clr_events);

  if (int_events & fep->ev_err)
   (*fep->ops->ev_error)(dev, int_events);

  if (int_events & fep->ev) {
   napi_ok = napi_schedule_prep(&fep->napi);

   (*fep->ops->napi_disable)(dev);
   (*fep->ops->clear_int_events)(dev, fep->ev_napi);



   if (napi_ok)
    __napi_schedule(&fep->napi);
  }

 }

 handled = nr > 0;
 return IRQ_RETVAL(handled);
}
