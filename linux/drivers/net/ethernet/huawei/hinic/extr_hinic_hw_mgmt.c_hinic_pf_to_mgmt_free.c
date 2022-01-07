
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_hwdev {int aeqs; } ;
struct hinic_pfhwdev {struct hinic_hwdev hwdev; } ;
struct hinic_pf_to_mgmt {int cmd_chain; } ;


 int HINIC_MSG_FROM_MGMT_CPU ;
 int hinic_aeq_unregister_hw_cb (int *,int ) ;
 int hinic_api_cmd_free (int ) ;
 struct hinic_pfhwdev* mgmt_to_pfhwdev (struct hinic_pf_to_mgmt*) ;

void hinic_pf_to_mgmt_free(struct hinic_pf_to_mgmt *pf_to_mgmt)
{
 struct hinic_pfhwdev *pfhwdev = mgmt_to_pfhwdev(pf_to_mgmt);
 struct hinic_hwdev *hwdev = &pfhwdev->hwdev;

 hinic_aeq_unregister_hw_cb(&hwdev->aeqs, HINIC_MSG_FROM_MGMT_CPU);
 hinic_api_cmd_free(pf_to_mgmt->cmd_chain);
}
