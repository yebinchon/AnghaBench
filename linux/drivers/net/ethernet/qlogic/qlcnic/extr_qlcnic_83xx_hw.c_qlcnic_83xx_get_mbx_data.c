
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; int * arg; } ;
struct qlcnic_cmd_args {scalar_t__ op_type; TYPE_1__ rsp; } ;
struct qlcnic_adapter {int ahw; } ;


 int QLCNIC_MBX_FW (int ,int) ;
 scalar_t__ QLC_83XX_MBX_POST_BC_OP ;
 int readl (int ) ;

__attribute__((used)) static inline void qlcnic_83xx_get_mbx_data(struct qlcnic_adapter *adapter,
         struct qlcnic_cmd_args *cmd)
{
 int i;

 if (cmd->op_type == QLC_83XX_MBX_POST_BC_OP)
  return;

 for (i = 0; i < cmd->rsp.num; i++)
  cmd->rsp.arg[i] = readl(QLCNIC_MBX_FW(adapter->ahw, i));
}
