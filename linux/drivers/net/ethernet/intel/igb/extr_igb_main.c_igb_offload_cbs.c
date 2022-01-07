
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_cbs_qopt_offload {int queue; int locredit; int hicredit; int sendslope; int idleslope; int enable; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ e1000_i210 ;
 int igb_offload_apply (struct igb_adapter*,int) ;
 int igb_save_cbs_params (struct igb_adapter*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int igb_offload_cbs(struct igb_adapter *adapter,
      struct tc_cbs_qopt_offload *qopt)
{
 struct e1000_hw *hw = &adapter->hw;
 int err;


 if (hw->mac.type != e1000_i210)
  return -EOPNOTSUPP;


 if (qopt->queue < 0 || qopt->queue > 1)
  return -EINVAL;

 err = igb_save_cbs_params(adapter, qopt->queue, qopt->enable,
      qopt->idleslope, qopt->sendslope,
      qopt->hicredit, qopt->locredit);
 if (err)
  return err;

 igb_offload_apply(adapter, qopt->queue);

 return 0;
}
