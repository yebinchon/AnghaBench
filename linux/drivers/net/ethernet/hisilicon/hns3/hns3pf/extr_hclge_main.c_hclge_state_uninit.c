
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ func; } ;
struct TYPE_5__ {scalar_t__ func; } ;
struct TYPE_8__ {TYPE_1__ work; } ;
struct TYPE_6__ {scalar_t__ function; } ;
struct hclge_dev {TYPE_3__ mbx_service_task; TYPE_3__ rst_service_task; TYPE_4__ service_task; TYPE_2__ reset_timer; int state; } ;


 int HCLGE_STATE_DOWN ;
 int HCLGE_STATE_REMOVING ;
 int cancel_delayed_work_sync (TYPE_4__*) ;
 int cancel_work_sync (TYPE_3__*) ;
 int del_timer_sync (TYPE_2__*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void hclge_state_uninit(struct hclge_dev *hdev)
{
 set_bit(HCLGE_STATE_DOWN, &hdev->state);
 set_bit(HCLGE_STATE_REMOVING, &hdev->state);

 if (hdev->reset_timer.function)
  del_timer_sync(&hdev->reset_timer);
 if (hdev->service_task.work.func)
  cancel_delayed_work_sync(&hdev->service_task);
 if (hdev->rst_service_task.func)
  cancel_work_sync(&hdev->rst_service_task);
 if (hdev->mbx_service_task.func)
  cancel_work_sync(&hdev->mbx_service_task);
}
