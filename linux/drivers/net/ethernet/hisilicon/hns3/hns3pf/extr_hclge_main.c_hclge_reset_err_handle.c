
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ reset_fail_cnt; } ;
struct hclge_dev {scalar_t__ reset_pending; TYPE_2__* pdev; TYPE_1__ rst_stats; int reset_type; int hw; } ;
struct TYPE_4__ {int dev; } ;


 int HCLGE_MISC_VECTOR_INT_STS ;
 int HCLGE_RESET_INT_M ;
 scalar_t__ MAX_RESET_FAIL_CNT ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int hclge_clear_reset_cause (struct hclge_dev*) ;
 int hclge_read_dev (int *,int ) ;
 int hclge_reset_handshake (struct hclge_dev*,int) ;
 int set_bit (int ,scalar_t__*) ;

__attribute__((used)) static bool hclge_reset_err_handle(struct hclge_dev *hdev)
{


 if (hdev->reset_pending) {
  dev_info(&hdev->pdev->dev, "Reset pending %lu\n",
    hdev->reset_pending);
  return 1;
 } else if (hclge_read_dev(&hdev->hw, HCLGE_MISC_VECTOR_INT_STS) &
     HCLGE_RESET_INT_M) {
  dev_info(&hdev->pdev->dev,
    "reset failed because new reset interrupt\n");
  hclge_clear_reset_cause(hdev);
  return 0;
 } else if (hdev->rst_stats.reset_fail_cnt < 5) {
  hdev->rst_stats.reset_fail_cnt++;
  set_bit(hdev->reset_type, &hdev->reset_pending);
  dev_info(&hdev->pdev->dev,
    "re-schedule reset task(%d)\n",
    hdev->rst_stats.reset_fail_cnt);
  return 1;
 }

 hclge_clear_reset_cause(hdev);


 hclge_reset_handshake(hdev, 1);

 dev_err(&hdev->pdev->dev, "Reset fail!\n");
 return 0;
}
