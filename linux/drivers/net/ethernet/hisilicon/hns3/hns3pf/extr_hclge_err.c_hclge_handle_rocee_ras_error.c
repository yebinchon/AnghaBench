
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_ae_dev {int hw_err_reset_req; struct hclge_dev* priv; } ;
struct hclge_dev {TYPE_1__* pdev; int state; } ;
typedef enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;
struct TYPE_2__ {int revision; } ;


 int HCLGE_STATE_RST_HANDLING ;
 int HNAE3_NONE_RESET ;
 int hclge_log_and_clear_rocee_ras_error (struct hclge_dev*) ;
 int set_bit (int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hclge_handle_rocee_ras_error(struct hnae3_ae_dev *ae_dev)
{
 struct hclge_dev *hdev = ae_dev->priv;
 enum hnae3_reset_type reset_type;

 if (test_bit(HCLGE_STATE_RST_HANDLING, &hdev->state) ||
     hdev->pdev->revision < 0x21)
  return;

 reset_type = hclge_log_and_clear_rocee_ras_error(hdev);
 if (reset_type != HNAE3_NONE_RESET)
  set_bit(reset_type, &ae_dev->hw_err_reset_req);
}
