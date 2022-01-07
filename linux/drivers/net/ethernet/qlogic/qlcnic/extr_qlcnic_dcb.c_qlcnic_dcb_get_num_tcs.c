
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int max_pfc_tc; int max_ets_tc; } ;
struct qlcnic_dcb_cfg {TYPE_2__ capability; } ;
struct qlcnic_adapter {TYPE_1__* dcb; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int state; struct qlcnic_dcb_cfg* cfg; } ;




 int EINVAL ;
 int QLCNIC_DCB_STATE ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_dcb_get_num_tcs(struct net_device *netdev, int attr, u8 *num)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_dcb_cfg *cfg = adapter->dcb->cfg;

 if (!test_bit(QLCNIC_DCB_STATE, &adapter->dcb->state))
  return -EINVAL;

 switch (attr) {
 case 128:
  *num = cfg->capability.max_ets_tc;
  return 0;
 case 129:
  *num = cfg->capability.max_pfc_tc;
  return 0;
 default:
  return -EINVAL;
 }
}
