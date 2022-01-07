
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_dcb_cee {TYPE_4__* tc_cfg; int pfc_mode_enable; int tc_param_valid; } ;
struct qlcnic_adapter {TYPE_2__* dcb; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {TYPE_3__* prio_cfg; } ;
struct TYPE_7__ {int pfc_type; } ;
struct TYPE_6__ {TYPE_1__* cfg; int state; } ;
struct TYPE_5__ {struct qlcnic_dcb_cee* type; } ;





 int DCB_FEATCFG_ENABLE ;
 int DCB_FEATCFG_ERROR ;
 int QLCNIC_DCB_STATE ;
 size_t QLC_DCB_OPER_IDX ;
 int netdev_err (struct net_device*,char*,int) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u8 qlcnic_dcb_get_feat_cfg(struct net_device *netdev, int fid, u8 *flag)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_dcb_cee *type;

 if (!test_bit(QLCNIC_DCB_STATE, &adapter->dcb->state))
  return 1;

 type = &adapter->dcb->cfg->type[QLC_DCB_OPER_IDX];
 *flag = 0;

 switch (fid) {
 case 128:
  if (type->tc_param_valid)
   *flag |= DCB_FEATCFG_ENABLE;
  else
   *flag |= DCB_FEATCFG_ERROR;
  break;
 case 129:
  if (type->pfc_mode_enable) {
   if (type->tc_cfg[0].prio_cfg[0].pfc_type)
    *flag |= DCB_FEATCFG_ENABLE;
  } else {
   *flag |= DCB_FEATCFG_ERROR;
  }
  break;
 case 130:
  *flag |= DCB_FEATCFG_ENABLE;
  break;
 default:
  netdev_err(netdev, "Invalid Feature ID %d\n", fid);
  return 1;
 }

 return 0;
}
