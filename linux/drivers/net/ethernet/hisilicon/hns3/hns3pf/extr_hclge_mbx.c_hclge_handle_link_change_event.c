
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_mbx_vf_to_pf_cmd {int * msg; } ;
struct hclge_dev {int state; } ;


 int HCLGE_STATE_SERVICE_SCHED ;
 size_t LINK_FAIL_CODE_OFFSET ;
 size_t LINK_STATUS_OFFSET ;
 int clear_bit (int ,int *) ;
 int hclge_link_fail_parse (struct hclge_dev*,int ) ;
 int hclge_task_schedule (struct hclge_dev*,int ) ;

__attribute__((used)) static void hclge_handle_link_change_event(struct hclge_dev *hdev,
        struct hclge_mbx_vf_to_pf_cmd *req)
{



 clear_bit(HCLGE_STATE_SERVICE_SCHED, &hdev->state);
 hclge_task_schedule(hdev, 0);

 if (!req->msg[1])
  hclge_link_fail_parse(hdev, req->msg[2]);
}
