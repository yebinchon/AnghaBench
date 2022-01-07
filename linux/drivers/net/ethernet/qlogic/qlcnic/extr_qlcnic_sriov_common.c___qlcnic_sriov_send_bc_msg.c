
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_vf_info {int state; TYPE_1__* adapter; } ;
struct qlcnic_bc_trans {int trans_state; } ;
struct TYPE_2__ {scalar_t__ need_fw_reset; } ;


 int EIO ;

 int QLC_BC_VF_CHANNEL ;
 int QLC_BC_VF_FLR ;




 int clear_bit (int ,int *) ;
 int qlcnic_sriov_issue_bc_post (struct qlcnic_bc_trans*,int ) ;
 int qlcnic_sriov_wait_for_channel_free (struct qlcnic_bc_trans*,int ) ;
 int qlcnic_sriov_wait_for_resp (struct qlcnic_bc_trans*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int __qlcnic_sriov_send_bc_msg(struct qlcnic_bc_trans *trans,
          struct qlcnic_vf_info *vf, u8 type)
{
 bool flag = 1;
 int err = -EIO;

 while (flag) {
  if (test_bit(QLC_BC_VF_FLR, &vf->state) ||
      vf->adapter->need_fw_reset)
   trans->trans_state = 132;

  switch (trans->trans_state) {
  case 130:
   trans->trans_state = 129;
   if (qlcnic_sriov_issue_bc_post(trans, type))
    trans->trans_state = 132;
   break;
  case 129:
   qlcnic_sriov_wait_for_channel_free(trans, type);
   break;
  case 128:
   qlcnic_sriov_wait_for_resp(trans);
   break;
  case 131:
   err = 0;
   flag = 0;
   break;
  case 132:
   err = -EIO;
   flag = 0;
   clear_bit(QLC_BC_VF_CHANNEL, &vf->state);
   break;
  default:
   err = -EIO;
   flag = 0;
  }
 }
 return err;
}
