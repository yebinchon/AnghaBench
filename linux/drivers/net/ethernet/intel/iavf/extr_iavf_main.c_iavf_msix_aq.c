
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iavf_hw {int dummy; } ;
struct iavf_adapter {int adminq_task; struct iavf_hw hw; } ;
typedef int irqreturn_t ;


 int IAVF_VFINT_ICR01 ;
 int IAVF_VFINT_ICR0_ENA1 ;
 int IRQ_HANDLED ;
 int iavf_wq ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;
 int rd32 (struct iavf_hw*,int ) ;

__attribute__((used)) static irqreturn_t iavf_msix_aq(int irq, void *data)
{
 struct net_device *netdev = data;
 struct iavf_adapter *adapter = netdev_priv(netdev);
 struct iavf_hw *hw = &adapter->hw;


 rd32(hw, IAVF_VFINT_ICR01);
 rd32(hw, IAVF_VFINT_ICR0_ENA1);


 queue_work(iavf_wq, &adapter->adminq_task);

 return IRQ_HANDLED;
}
