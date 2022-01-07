
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mbx_mutex; } ;
struct hclgevf_dev {int state; TYPE_1__ mbx_resp; int rst_service_task; int service_task; int service_timer; int mbx_service_task; } ;


 int HCLGEVF_STATE_DOWN ;
 int HCLGEVF_STATE_MBX_HANDLING ;
 int HCLGEVF_STATE_MBX_SERVICE_SCHED ;
 int HCLGEVF_STATE_SERVICE_SCHED ;
 int INIT_WORK (int *,int ) ;
 int clear_bit (int ,int *) ;
 int hclgevf_mailbox_service_task ;
 int hclgevf_reset_service_task ;
 int hclgevf_service_task ;
 int hclgevf_service_timer ;
 int mutex_init (int *) ;
 int set_bit (int ,int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void hclgevf_state_init(struct hclgevf_dev *hdev)
{

 INIT_WORK(&hdev->mbx_service_task, hclgevf_mailbox_service_task);
 clear_bit(HCLGEVF_STATE_MBX_SERVICE_SCHED, &hdev->state);
 clear_bit(HCLGEVF_STATE_MBX_HANDLING, &hdev->state);


 timer_setup(&hdev->service_timer, hclgevf_service_timer, 0);

 INIT_WORK(&hdev->service_task, hclgevf_service_task);
 clear_bit(HCLGEVF_STATE_SERVICE_SCHED, &hdev->state);

 INIT_WORK(&hdev->rst_service_task, hclgevf_reset_service_task);

 mutex_init(&hdev->mbx_resp.mbx_mutex);


 set_bit(HCLGEVF_STATE_DOWN, &hdev->state);
}
