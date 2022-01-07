
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_trans_list {int count; int wait_list; } ;
struct qlcnic_vf_info {struct qlcnic_trans_list rcv_act; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_bc_trans {int list; } ;


 int list_add_tail (int *,int *) ;
 int qlcnic_sriov_process_bc_cmd ;
 int qlcnic_sriov_schedule_bc_cmd (struct qlcnic_sriov*,struct qlcnic_vf_info*,int ) ;

int __qlcnic_sriov_add_act_list(struct qlcnic_sriov *sriov,
    struct qlcnic_vf_info *vf,
    struct qlcnic_bc_trans *trans)
{
 struct qlcnic_trans_list *t_list = &vf->rcv_act;

 t_list->count++;
 list_add_tail(&trans->list, &t_list->wait_list);
 if (t_list->count == 1)
  qlcnic_sriov_schedule_bc_cmd(sriov, vf,
          qlcnic_sriov_process_bc_cmd);
 return 0;
}
