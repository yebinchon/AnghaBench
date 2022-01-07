
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_trans_list {int lock; } ;
struct qlcnic_vf_info {struct qlcnic_trans_list rcv_act; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_bc_trans {int dummy; } ;


 int __qlcnic_sriov_add_act_list (struct qlcnic_sriov*,struct qlcnic_vf_info*,struct qlcnic_bc_trans*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int qlcnic_sriov_add_act_list_irqsave(struct qlcnic_sriov *sriov,
          struct qlcnic_vf_info *vf,
          struct qlcnic_bc_trans *trans)
{
 struct qlcnic_trans_list *t_list = &vf->rcv_act;
 unsigned long flag;

 spin_lock_irqsave(&t_list->lock, flag);

 __qlcnic_sriov_add_act_list(sriov, vf, trans);

 spin_unlock_irqrestore(&t_list->lock, flag);
 return 0;
}
