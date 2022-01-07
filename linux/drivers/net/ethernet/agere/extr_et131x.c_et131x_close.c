
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct et131x_adapter {int error_timer; TYPE_1__* pdev; int flags; int napi; } ;
struct TYPE_2__ {int irq; } ;


 int FMP_ADAPTER_INTERRUPT_IN_USE ;
 int del_timer_sync (int *) ;
 int et131x_down (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int et131x_close(struct net_device *netdev)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);

 et131x_down(netdev);
 napi_disable(&adapter->napi);

 adapter->flags &= ~FMP_ADAPTER_INTERRUPT_IN_USE;
 free_irq(adapter->pdev->irq, netdev);


 return del_timer_sync(&adapter->error_timer);
}
