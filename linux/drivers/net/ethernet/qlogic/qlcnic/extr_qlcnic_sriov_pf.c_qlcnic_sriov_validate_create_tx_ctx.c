
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;


 int EINVAL ;

__attribute__((used)) static int qlcnic_sriov_validate_create_tx_ctx(struct qlcnic_cmd_args *cmd)
{
 if ((cmd->req.arg[0] >> 29) != 0x3)
  return -EINVAL;

 return 0;
}
