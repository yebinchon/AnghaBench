
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct net_device {int name; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int test_icr; struct e1000_hw hw; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {int irq; } ;


 int E1000_WRITE_FLUSH () ;
 int ICS ;
 int IMC ;
 int IMS ;
 int IRQF_PROBE_SHARED ;
 int IRQF_SHARED ;
 int e1000_test_intr ;
 int e_info (struct e1000_hw*,char*,char*) ;
 int ew32 (int ,int) ;
 int free_irq (int,struct net_device*) ;
 int msleep (int) ;
 scalar_t__ request_irq (int,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int e1000_intr_test(struct e1000_adapter *adapter, u64 *data)
{
 struct net_device *netdev = adapter->netdev;
 u32 mask, i = 0;
 bool shared_int = 1;
 u32 irq = adapter->pdev->irq;
 struct e1000_hw *hw = &adapter->hw;

 *data = 0;




 if (!request_irq(irq, e1000_test_intr, IRQF_PROBE_SHARED, netdev->name,
    netdev))
  shared_int = 0;
 else if (request_irq(irq, e1000_test_intr, IRQF_SHARED,
        netdev->name, netdev)) {
  *data = 1;
  return -1;
 }
 e_info(hw, "testing %s interrupt\n", (shared_int ?
        "shared" : "unshared"));


 ew32(IMC, 0xFFFFFFFF);
 E1000_WRITE_FLUSH();
 msleep(10);


 for (; i < 10; i++) {

  mask = 1 << i;

  if (!shared_int) {






   adapter->test_icr = 0;
   ew32(IMC, mask);
   ew32(ICS, mask);
   E1000_WRITE_FLUSH();
   msleep(10);

   if (adapter->test_icr & mask) {
    *data = 3;
    break;
   }
  }







  adapter->test_icr = 0;
  ew32(IMS, mask);
  ew32(ICS, mask);
  E1000_WRITE_FLUSH();
  msleep(10);

  if (!(adapter->test_icr & mask)) {
   *data = 4;
   break;
  }

  if (!shared_int) {






   adapter->test_icr = 0;
   ew32(IMC, ~mask & 0x00007FFF);
   ew32(ICS, ~mask & 0x00007FFF);
   E1000_WRITE_FLUSH();
   msleep(10);

   if (adapter->test_icr) {
    *data = 5;
    break;
   }
  }
 }


 ew32(IMC, 0xFFFFFFFF);
 E1000_WRITE_FLUSH();
 msleep(10);


 free_irq(irq, netdev);

 return *data;
}
