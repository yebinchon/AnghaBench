
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int state; } ;


 int HCLGE_STATE_DOWN ;
 int HCLGE_STATE_MBX_HANDLING ;
 int HCLGE_STATE_MBX_SERVICE_SCHED ;
 int HCLGE_STATE_RST_HANDLING ;
 int HCLGE_STATE_RST_SERVICE_SCHED ;
 int HCLGE_STATE_SERVICE_INITED ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void hclge_state_init(struct hclge_dev *hdev)
{
 set_bit(HCLGE_STATE_SERVICE_INITED, &hdev->state);
 set_bit(HCLGE_STATE_DOWN, &hdev->state);
 clear_bit(HCLGE_STATE_RST_SERVICE_SCHED, &hdev->state);
 clear_bit(HCLGE_STATE_RST_HANDLING, &hdev->state);
 clear_bit(HCLGE_STATE_MBX_SERVICE_SCHED, &hdev->state);
 clear_bit(HCLGE_STATE_MBX_HANDLING, &hdev->state);
}
