
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct net_device {int name; } ;
struct TYPE_4__ {int type; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct e1000_adapter {int int_mode; int flags; int test_icr; struct e1000_hw hw; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_3__ {int irq; } ;


 int BIT (int) ;
 void* E1000E_INT_MODE_LEGACY ;
 int E1000E_INT_MODE_MSIX ;

 int FLAG_IS_ICH ;
 int ICS ;
 int IMC ;
 int IMS ;
 int IRQF_PROBE_SHARED ;
 int IRQF_SHARED ;
 int e1000_ich8lan ;
 int e1000_ich9lan ;
 int e1000_test_intr ;
 int e1000e_reset_interrupt_capability (struct e1000_adapter*) ;
 int e1000e_set_interrupt_capability (struct e1000_adapter*) ;
 int e1e_flush () ;
 int e_info (char*,char*) ;
 int ew32 (int ,int) ;
 int free_irq (int,struct net_device*) ;
 scalar_t__ request_irq (int,int ,int ,int ,struct net_device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int e1000_intr_test(struct e1000_adapter *adapter, u64 *data)
{
 struct net_device *netdev = adapter->netdev;
 struct e1000_hw *hw = &adapter->hw;
 u32 mask;
 u32 shared_int = 1;
 u32 irq = adapter->pdev->irq;
 int i;
 int ret_val = 0;
 int int_mode = E1000E_INT_MODE_LEGACY;

 *data = 0;


 if (adapter->int_mode == E1000E_INT_MODE_MSIX) {
  int_mode = adapter->int_mode;
  e1000e_reset_interrupt_capability(adapter);
  adapter->int_mode = E1000E_INT_MODE_LEGACY;
  e1000e_set_interrupt_capability(adapter);
 }

 if (!request_irq(irq, e1000_test_intr, IRQF_PROBE_SHARED, netdev->name,
    netdev)) {
  shared_int = 0;
 } else if (request_irq(irq, e1000_test_intr, IRQF_SHARED, netdev->name,
          netdev)) {
  *data = 1;
  ret_val = -1;
  goto out;
 }
 e_info("testing %s interrupt\n", (shared_int ? "shared" : "unshared"));


 ew32(IMC, 0xFFFFFFFF);
 e1e_flush();
 usleep_range(10000, 11000);


 for (i = 0; i < 10; i++) {

  mask = BIT(i);

  if (adapter->flags & FLAG_IS_ICH) {
   switch (mask) {
   case 128:
    continue;
   case 0x00000100:
    if (adapter->hw.mac.type == e1000_ich8lan ||
        adapter->hw.mac.type == e1000_ich9lan)
     continue;
    break;
   default:
    break;
   }
  }

  if (!shared_int) {






   adapter->test_icr = 0;
   ew32(IMC, mask);
   ew32(ICS, mask);
   e1e_flush();
   usleep_range(10000, 11000);

   if (adapter->test_icr & mask) {
    *data = 3;
    break;
   }
  }







  adapter->test_icr = 0;
  ew32(IMS, mask);
  ew32(ICS, mask);
  e1e_flush();
  usleep_range(10000, 11000);

  if (!(adapter->test_icr & mask)) {
   *data = 4;
   break;
  }

  if (!shared_int) {






   adapter->test_icr = 0;
   ew32(IMC, ~mask & 0x00007FFF);
   ew32(ICS, ~mask & 0x00007FFF);
   e1e_flush();
   usleep_range(10000, 11000);

   if (adapter->test_icr) {
    *data = 5;
    break;
   }
  }
 }


 ew32(IMC, 0xFFFFFFFF);
 e1e_flush();
 usleep_range(10000, 11000);


 free_irq(irq, netdev);

out:
 if (int_mode == E1000E_INT_MODE_MSIX) {
  e1000e_reset_interrupt_capability(adapter);
  adapter->int_mode = int_mode;
  e1000e_set_interrupt_capability(adapter);
 }

 return ret_val;
}
