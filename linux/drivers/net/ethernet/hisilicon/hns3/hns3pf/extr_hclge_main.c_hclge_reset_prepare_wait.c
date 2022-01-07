
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int flr_rst_cnt; int pf_rst_cnt; } ;
struct hclge_dev {int reset_type; TYPE_2__* pdev; int hw; TYPE_1__ rst_stats; int flr_state; int state; } ;
struct TYPE_4__ {int dev; } ;


 int BIT (int ) ;
 int HCLGE_PF_OTHER_INT_REG ;
 int HCLGE_RESET_SYNC_TIME ;
 int HCLGE_STATE_CMD_DISABLE ;
 int HCLGE_VECTOR0_IMP_RESET_INT_B ;
 int HNAE3_FLR_DOWN ;



 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int hclge_func_reset_cmd (struct hclge_dev*,int ) ;
 int hclge_func_reset_sync_vf (struct hclge_dev*) ;
 int hclge_handle_imp_error (struct hclge_dev*) ;
 int hclge_read_dev (int *,int ) ;
 int hclge_reset_handshake (struct hclge_dev*,int) ;
 int hclge_write_dev (int *,int ,int) ;
 int msleep (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int hclge_reset_prepare_wait(struct hclge_dev *hdev)
{
 u32 reg_val;
 int ret = 0;

 switch (hdev->reset_type) {
 case 129:



  ret = hclge_func_reset_sync_vf(hdev);
  if (ret)
   return ret;

  ret = hclge_func_reset_cmd(hdev, 0);
  if (ret) {
   dev_err(&hdev->pdev->dev,
    "asserting function reset fail %d!\n", ret);
   return ret;
  }






  set_bit(HCLGE_STATE_CMD_DISABLE, &hdev->state);
  hdev->rst_stats.pf_rst_cnt++;
  break;
 case 130:



  ret = hclge_func_reset_sync_vf(hdev);
  if (ret)
   return ret;

  set_bit(HCLGE_STATE_CMD_DISABLE, &hdev->state);
  set_bit(HNAE3_FLR_DOWN, &hdev->flr_state);
  hdev->rst_stats.flr_rst_cnt++;
  break;
 case 128:
  hclge_handle_imp_error(hdev);
  reg_val = hclge_read_dev(&hdev->hw, HCLGE_PF_OTHER_INT_REG);
  hclge_write_dev(&hdev->hw, HCLGE_PF_OTHER_INT_REG,
    BIT(HCLGE_VECTOR0_IMP_RESET_INT_B) | reg_val);
  break;
 default:
  break;
 }


 msleep(HCLGE_RESET_SYNC_TIME);
 hclge_reset_handshake(hdev, 1);
 dev_info(&hdev->pdev->dev, "prepare wait ok\n");

 return ret;
}
