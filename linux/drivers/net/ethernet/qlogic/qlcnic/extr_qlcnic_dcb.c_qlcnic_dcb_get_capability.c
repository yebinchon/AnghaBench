
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_adapter {TYPE_3__* dcb; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cfg; int state; } ;
struct TYPE_4__ {int dcb_capability; } ;
struct TYPE_5__ {TYPE_1__ capability; } ;
 int QLCNIC_DCB_STATE ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u8 qlcnic_dcb_get_capability(struct net_device *netdev, int capid,
        u8 *cap)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);

 if (!test_bit(QLCNIC_DCB_STATE, &adapter->dcb->state))
  return 1;

 switch (capid) {
 case 130:
 case 128:
 case 132:
 case 133:
  *cap = 1;
  break;
 case 129:
 case 131:
  *cap = 0x80;
  break;
 case 134:
  *cap = adapter->dcb->cfg->capability.dcb_capability;
  break;
 default:
  *cap = 0;
 }

 return 0;
}
