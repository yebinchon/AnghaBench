
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_hwdev {int hwif; } ;
struct hinic_pfhwdev {int pf_to_mgmt; struct hinic_hwdev hwdev; } ;


 int HINIC_MOD_L2NIC ;
 int HINIC_PF_MGMT_INIT ;
 int hinic_pf_to_mgmt_free (int *) ;
 int hinic_set_pf_action (int ,int ) ;
 int hinic_unregister_mgmt_msg_cb (int *,int ) ;

__attribute__((used)) static void free_pfhwdev(struct hinic_pfhwdev *pfhwdev)
{
 struct hinic_hwdev *hwdev = &pfhwdev->hwdev;

 hinic_set_pf_action(hwdev->hwif, HINIC_PF_MGMT_INIT);

 hinic_unregister_mgmt_msg_cb(&pfhwdev->pf_to_mgmt, HINIC_MOD_L2NIC);

 hinic_pf_to_mgmt_free(&pfhwdev->pf_to_mgmt);
}
