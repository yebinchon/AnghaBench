
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_cmd_args {int dummy; } ;
struct qlcnic_back_channel {int vf_async_work; int bc_async_wq; } ;
struct qlcnic_async_cmd {int dummy; } ;


 int kfree (struct qlcnic_cmd_args*) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 struct qlcnic_async_cmd* qlcnic_sriov_alloc_async_cmd (struct qlcnic_back_channel*,struct qlcnic_cmd_args*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void qlcnic_sriov_schedule_async_cmd(struct qlcnic_back_channel *bc,
         struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_async_cmd *entry = ((void*)0);

 entry = qlcnic_sriov_alloc_async_cmd(bc, cmd);
 if (!entry) {
  qlcnic_free_mbx_args(cmd);
  kfree(cmd);
  return;
 }

 queue_work(bc->bc_async_wq, &bc->vf_async_work);
}
