
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qlcnic_adapter {TYPE_1__* dcb; } ;
struct net_device {int dummy; } ;
struct dcb_app {int protocol; int selector; } ;
struct TYPE_2__ {int state; } ;


 int EINVAL ;
 int QLCNIC_DCB_STATE ;
 int dcb_getapp (struct net_device*,struct dcb_app*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_dcb_get_app(struct net_device *netdev, u8 idtype, u16 id)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct dcb_app app = {
    .selector = idtype,
    .protocol = id,
        };

 if (!test_bit(QLCNIC_DCB_STATE, &adapter->dcb->state))
  return -EINVAL;

 return dcb_getapp(netdev, &app);
}
