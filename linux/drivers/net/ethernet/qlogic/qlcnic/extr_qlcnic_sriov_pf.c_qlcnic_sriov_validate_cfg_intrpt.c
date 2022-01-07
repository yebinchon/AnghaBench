
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_vf_info {int pci_func; } ;
struct TYPE_2__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;


 int BIT_16 ;
 int EINVAL ;

__attribute__((used)) static int qlcnic_sriov_validate_cfg_intrpt(struct qlcnic_vf_info *vf,
         struct qlcnic_cmd_args *cmd)
{
 if (((cmd->req.arg[1] >> 8) & 0xff) != vf->pci_func)
  return -EINVAL;

 if (!(cmd->req.arg[1] & BIT_16))
  return -EINVAL;

 if ((cmd->req.arg[1] & 0xff) != 0x1)
  return -EINVAL;

 return 0;
}
