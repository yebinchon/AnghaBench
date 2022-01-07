
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rst_fail_cnt; } ;
struct hclgevf_dev {int reset_state; int reset_pending; int reset_type; TYPE_2__ rst_stats; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ HCLGEVF_RESET_MAX_FAIL_CNT ;
 int HCLGEVF_RESET_PENDING ;
 int dev_err (int *,char*,scalar_t__) ;
 scalar_t__ hclgevf_is_reset_pending (struct hclgevf_dev*) ;
 int hclgevf_reset_handshake (struct hclgevf_dev*,int) ;
 int hclgevf_reset_task_schedule (struct hclgevf_dev*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void hclgevf_reset_err_handle(struct hclgevf_dev *hdev)
{

 hclgevf_reset_handshake(hdev, 1);
 hdev->rst_stats.rst_fail_cnt++;
 dev_err(&hdev->pdev->dev, "failed to reset VF(%d)\n",
  hdev->rst_stats.rst_fail_cnt);

 if (hdev->rst_stats.rst_fail_cnt < HCLGEVF_RESET_MAX_FAIL_CNT)
  set_bit(hdev->reset_type, &hdev->reset_pending);

 if (hclgevf_is_reset_pending(hdev)) {
  set_bit(HCLGEVF_RESET_PENDING, &hdev->reset_state);
  hclgevf_reset_task_schedule(hdev);
 }
}
