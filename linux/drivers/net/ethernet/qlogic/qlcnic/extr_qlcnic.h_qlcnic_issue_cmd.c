
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_cmd_args {int dummy; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* mbx_cmd ) (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;} ;


 int EIO ;
 int stub1 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static inline int qlcnic_issue_cmd(struct qlcnic_adapter *adapter,
       struct qlcnic_cmd_args *cmd)
{
 if (adapter->ahw->hw_ops->mbx_cmd)
  return adapter->ahw->hw_ops->mbx_cmd(adapter, cmd);

 return -EIO;
}
