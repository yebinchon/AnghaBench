
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct net_device {int name; } ;
struct TYPE_5__ {int type; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct igb_adapter {int flags; int test_icr; TYPE_3__* msix_entries; TYPE_1__* pdev; struct net_device* netdev; struct e1000_hw hw; } ;
struct TYPE_6__ {int vector; } ;
struct TYPE_4__ {int irq; int dev; } ;


 int BIT (int) ;
 int E1000_ICR ;
 int E1000_ICS ;
 int E1000_IMC ;
 int E1000_IMS ;
 int IGB_FLAG_HAS_MSI ;
 int IGB_FLAG_HAS_MSIX ;
 int IRQF_PROBE_SHARED ;
 int IRQF_SHARED ;
 int dev_info (int *,char*,char*) ;







 int free_irq (int,struct igb_adapter*) ;
 int igb_test_intr ;
 scalar_t__ request_irq (int,int ,int ,int ,struct igb_adapter*) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static int igb_intr_test(struct igb_adapter *adapter, u64 *data)
{
 struct e1000_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 u32 mask, ics_mask, i = 0, shared_int = 1;
 u32 irq = adapter->pdev->irq;

 *data = 0;


 if (adapter->flags & IGB_FLAG_HAS_MSIX) {
  if (request_irq(adapter->msix_entries[0].vector,
    igb_test_intr, 0, netdev->name, adapter)) {
   *data = 1;
   return -1;
  }
 } else if (adapter->flags & IGB_FLAG_HAS_MSI) {
  shared_int = 0;
  if (request_irq(irq,
    igb_test_intr, 0, netdev->name, adapter)) {
   *data = 1;
   return -1;
  }
 } else if (!request_irq(irq, igb_test_intr, IRQF_PROBE_SHARED,
    netdev->name, adapter)) {
  shared_int = 0;
 } else if (request_irq(irq, igb_test_intr, IRQF_SHARED,
   netdev->name, adapter)) {
  *data = 1;
  return -1;
 }
 dev_info(&adapter->pdev->dev, "testing %s interrupt\n",
  (shared_int ? "shared" : "unshared"));


 wr32(E1000_IMC, ~0);
 wrfl();
 usleep_range(10000, 11000);


 switch (hw->mac.type) {
 case 134:
  ics_mask = 0x37F47EDD;
  break;
 case 133:
  ics_mask = 0x77D4FBFD;
  break;
 case 132:
  ics_mask = 0x77DCFED5;
  break;
 case 129:
 case 128:
 case 131:
 case 130:
  ics_mask = 0x77DCFED5;
  break;
 default:
  ics_mask = 0x7FFFFFFF;
  break;
 }


 for (; i < 31; i++) {

  mask = BIT(i);

  if (!(mask & ics_mask))
   continue;

  if (!shared_int) {






   adapter->test_icr = 0;


   wr32(E1000_ICR, ~0);

   wr32(E1000_IMC, mask);
   wr32(E1000_ICS, mask);
   wrfl();
   usleep_range(10000, 11000);

   if (adapter->test_icr & mask) {
    *data = 3;
    break;
   }
  }







  adapter->test_icr = 0;


  wr32(E1000_ICR, ~0);

  wr32(E1000_IMS, mask);
  wr32(E1000_ICS, mask);
  wrfl();
  usleep_range(10000, 11000);

  if (!(adapter->test_icr & mask)) {
   *data = 4;
   break;
  }

  if (!shared_int) {






   adapter->test_icr = 0;


   wr32(E1000_ICR, ~0);

   wr32(E1000_IMC, ~mask);
   wr32(E1000_ICS, ~mask);
   wrfl();
   usleep_range(10000, 11000);

   if (adapter->test_icr & mask) {
    *data = 5;
    break;
   }
  }
 }


 wr32(E1000_IMC, ~0);
 wrfl();
 usleep_range(10000, 11000);


 if (adapter->flags & IGB_FLAG_HAS_MSIX)
  free_irq(adapter->msix_entries[0].vector, adapter);
 else
  free_irq(irq, adapter);

 return *data;
}
