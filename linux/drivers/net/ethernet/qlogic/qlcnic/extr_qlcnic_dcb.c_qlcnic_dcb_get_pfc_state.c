
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_dcb {TYPE_2__* cfg; int state; } ;
struct qlcnic_adapter {struct qlcnic_dcb* dcb; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int pfc_mode_enable; } ;


 int QLCNIC_DCB_STATE ;
 size_t QLC_DCB_OPER_IDX ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u8 qlcnic_dcb_get_pfc_state(struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_dcb *dcb = adapter->dcb;

 if (!test_bit(QLCNIC_DCB_STATE, &dcb->state))
  return 0;

 return dcb->cfg->type[QLC_DCB_OPER_IDX].pfc_mode_enable;
}
