
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_vf_info {int rx_ctx_id; } ;
struct TYPE_2__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;


 int EINVAL ;

__attribute__((used)) static int qlcnic_sriov_validate_cfg_lro(struct qlcnic_vf_info *vf,
      struct qlcnic_cmd_args *cmd)
{
 if ((cmd->req.arg[1] >> 16) != vf->rx_ctx_id)
  return -EINVAL;

 return 0;
}
