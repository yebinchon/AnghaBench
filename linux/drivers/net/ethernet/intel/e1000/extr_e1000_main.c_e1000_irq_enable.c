
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int E1000_WRITE_FLUSH () ;
 int IMS ;
 int IMS_ENABLE_MASK ;
 int ew32 (int ,int ) ;

__attribute__((used)) static void e1000_irq_enable(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;

 ew32(IMS, IMS_ENABLE_MASK);
 E1000_WRITE_FLUSH();
}
