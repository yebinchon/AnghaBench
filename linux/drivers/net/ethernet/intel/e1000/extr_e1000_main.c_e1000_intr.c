
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int get_link_status; } ;
struct e1000_adapter {int flags; int napi; scalar_t__ total_rx_packets; scalar_t__ total_rx_bytes; scalar_t__ total_tx_packets; scalar_t__ total_tx_bytes; int watchdog_task; struct e1000_hw hw; } ;
typedef int irqreturn_t ;


 int E1000_ICR_LSC ;
 int E1000_ICR_RXSEQ ;
 int E1000_WRITE_FLUSH () ;
 int ICR ;
 int IMC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __E1000_DOWN ;
 int __napi_schedule (int *) ;
 int e1000_irq_enable (struct e1000_adapter*) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;
 scalar_t__ likely (int ) ;
 int napi_schedule_prep (int *) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int schedule_delayed_work (int *,int) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t e1000_intr(int irq, void *data)
{
 struct net_device *netdev = data;
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 icr = er32(ICR);

 if (unlikely((!icr)))
  return IRQ_NONE;





 if (unlikely(test_bit(__E1000_DOWN, &adapter->flags)))
  return IRQ_HANDLED;

 if (unlikely(icr & (E1000_ICR_RXSEQ | E1000_ICR_LSC))) {
  hw->get_link_status = 1;

  if (!test_bit(__E1000_DOWN, &adapter->flags))
   schedule_delayed_work(&adapter->watchdog_task, 1);
 }


 ew32(IMC, ~0);
 E1000_WRITE_FLUSH();

 if (likely(napi_schedule_prep(&adapter->napi))) {
  adapter->total_tx_bytes = 0;
  adapter->total_tx_packets = 0;
  adapter->total_rx_bytes = 0;
  adapter->total_rx_packets = 0;
  __napi_schedule(&adapter->napi);
 } else {



  if (!test_bit(__E1000_DOWN, &adapter->flags))
   e1000_irq_enable(adapter);
 }

 return IRQ_HANDLED;
}
