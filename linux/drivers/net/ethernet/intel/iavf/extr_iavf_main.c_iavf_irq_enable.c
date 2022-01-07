
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_hw {int dummy; } ;
struct iavf_adapter {struct iavf_hw hw; } ;


 int iavf_flush (struct iavf_hw*) ;
 int iavf_irq_enable_queues (struct iavf_adapter*,int ) ;
 int iavf_misc_irq_enable (struct iavf_adapter*) ;

void iavf_irq_enable(struct iavf_adapter *adapter, bool flush)
{
 struct iavf_hw *hw = &adapter->hw;

 iavf_misc_irq_enable(adapter);
 iavf_irq_enable_queues(adapter, ~0);

 if (flush)
  iavf_flush(hw);
}
