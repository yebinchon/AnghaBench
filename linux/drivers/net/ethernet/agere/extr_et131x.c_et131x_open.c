
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {unsigned int irq; int dev; } ;
struct net_device {int name; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct et131x_adapter {int napi; int flags; TYPE_1__ error_timer; struct pci_dev* pdev; } ;


 int FMP_ADAPTER_INTERRUPT_IN_USE ;
 int IRQF_SHARED ;
 int TX_ERROR_PERIOD ;
 int add_timer (TYPE_1__*) ;
 int dev_err (int *,char*,unsigned int) ;
 int et131x_error_timer_handler ;
 int et131x_isr ;
 int et131x_up (struct net_device*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int napi_enable (int *) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int request_irq (unsigned int,int ,int ,int ,struct net_device*) ;
 int timer_setup (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int et131x_open(struct net_device *netdev)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);
 struct pci_dev *pdev = adapter->pdev;
 unsigned int irq = pdev->irq;
 int result;


 timer_setup(&adapter->error_timer, et131x_error_timer_handler, 0);
 adapter->error_timer.expires = jiffies +
  msecs_to_jiffies(TX_ERROR_PERIOD);
 add_timer(&adapter->error_timer);

 result = request_irq(irq, et131x_isr,
        IRQF_SHARED, netdev->name, netdev);
 if (result) {
  dev_err(&pdev->dev, "could not register IRQ %d\n", irq);
  return result;
 }

 adapter->flags |= FMP_ADAPTER_INTERRUPT_IN_USE;

 napi_enable(&adapter->napi);

 et131x_up(netdev);

 return result;
}
