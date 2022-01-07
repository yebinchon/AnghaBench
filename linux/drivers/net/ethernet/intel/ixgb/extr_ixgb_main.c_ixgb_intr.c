
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgb_hw {int dummy; } ;
struct ixgb_adapter {int napi; struct ixgb_hw hw; int watchdog_timer; int flags; } ;
typedef int irqreturn_t ;


 int ICR ;
 int IMC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IXGB_INT_LSC ;
 int IXGB_INT_RXSEQ ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int ) ;
 int __IXGB_DOWN ;
 int __napi_schedule (int *) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t
ixgb_intr(int irq, void *data)
{
 struct net_device *netdev = data;
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 struct ixgb_hw *hw = &adapter->hw;
 u32 icr = IXGB_READ_REG(hw, ICR);

 if (unlikely(!icr))
  return IRQ_NONE;

 if (unlikely(icr & (IXGB_INT_RXSEQ | IXGB_INT_LSC)))
  if (!test_bit(__IXGB_DOWN, &adapter->flags))
   mod_timer(&adapter->watchdog_timer, jiffies);

 if (napi_schedule_prep(&adapter->napi)) {





  IXGB_WRITE_REG(&adapter->hw, IMC, ~0);
  __napi_schedule(&adapter->napi);
 }
 return IRQ_HANDLED;
}
