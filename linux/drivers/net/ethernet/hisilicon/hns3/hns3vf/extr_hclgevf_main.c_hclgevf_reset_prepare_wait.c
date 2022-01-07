
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int flr_rst_cnt; int vf_func_rst_cnt; } ;
struct hclgevf_dev {int reset_type; TYPE_2__* pdev; int state; TYPE_1__ rst_stats; int flr_state; } ;
struct TYPE_4__ {int dev; } ;


 int HCLGEVF_RESET_SYNC_TIME ;
 int HCLGEVF_STATE_CMD_DISABLE ;
 int HCLGE_MBX_RESET ;
 int HNAE3_FLR_DOWN ;


 int dev_info (int *,char*,int,int) ;
 int hclgevf_reset_handshake (struct hclgevf_dev*,int) ;
 int hclgevf_send_mbx_msg (struct hclgevf_dev*,int ,int ,int *,int ,int,int *,int) ;
 int msleep (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int hclgevf_reset_prepare_wait(struct hclgevf_dev *hdev)
{


 int ret = 0;

 switch (hdev->reset_type) {
 case 128:
  ret = hclgevf_send_mbx_msg(hdev, HCLGE_MBX_RESET, 0, ((void*)0),
        0, 1, ((void*)0), sizeof(u8));
  hdev->rst_stats.vf_func_rst_cnt++;
  break;
 case 129:
  set_bit(HNAE3_FLR_DOWN, &hdev->flr_state);
  hdev->rst_stats.flr_rst_cnt++;
  break;
 default:
  break;
 }

 set_bit(HCLGEVF_STATE_CMD_DISABLE, &hdev->state);

 msleep(100);
 hclgevf_reset_handshake(hdev, 1);
 dev_info(&hdev->pdev->dev, "prepare reset(%d) wait done, ret:%d\n",
   hdev->reset_type, ret);

 return ret;
}
