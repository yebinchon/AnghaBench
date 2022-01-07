
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_adapter {TYPE_1__* dcb; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;


 int QLCNIC_DCB_STATE ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u8 qlcnic_dcb_get_state(struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);

 return test_bit(QLCNIC_DCB_STATE, &adapter->dcb->state);
}
