
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {scalar_t__ quiet_count; scalar_t__ irqmask; } ;


 scalar_t__ NVREG_IRQMASK_CPU ;
 scalar_t__ NVREG_IRQMASK_THROUGHPUT ;
 scalar_t__ NV_DYNAMIC_MAX_QUIET_COUNT ;
 int NV_DYNAMIC_THRESHOLD ;
 scalar_t__ NV_OPTIMIZATION_MODE_DYNAMIC ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 scalar_t__ optimization_mode ;

__attribute__((used)) static inline int nv_change_interrupt_mode(struct net_device *dev, int total_work)
{
 struct fe_priv *np = netdev_priv(dev);

 if (optimization_mode == NV_OPTIMIZATION_MODE_DYNAMIC) {
  if (total_work > NV_DYNAMIC_THRESHOLD) {

   np->quiet_count = 0;
   if (np->irqmask != NVREG_IRQMASK_CPU) {
    np->irqmask = NVREG_IRQMASK_CPU;
    return 1;
   }
  } else {
   if (np->quiet_count < NV_DYNAMIC_MAX_QUIET_COUNT) {
    np->quiet_count++;
   } else {


    if (np->irqmask != NVREG_IRQMASK_THROUGHPUT) {
     np->irqmask = NVREG_IRQMASK_THROUGHPUT;
     return 1;
    }
   }
  }
 }
 return 0;
}
