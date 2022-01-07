
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int test_icr; struct e1000_hw hw; } ;
typedef int irqreturn_t ;


 int ICR ;
 int IRQ_HANDLED ;
 int er32 (int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static irqreturn_t e1000_test_intr(int irq, void *data)
{
 struct net_device *netdev = (struct net_device *)data;
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 adapter->test_icr |= er32(ICR);

 return IRQ_HANDLED;
}
