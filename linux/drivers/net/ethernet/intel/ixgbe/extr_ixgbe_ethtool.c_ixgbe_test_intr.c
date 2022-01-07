
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_adapter {int hw; int test_icr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IXGBE_EICR ;
 int IXGBE_READ_REG (int *,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static irqreturn_t ixgbe_test_intr(int irq, void *data)
{
 struct net_device *netdev = (struct net_device *) data;
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 adapter->test_icr |= IXGBE_READ_REG(&adapter->hw, IXGBE_EICR);

 return IRQ_HANDLED;
}
