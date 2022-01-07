
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct hclge_serdes_lb_cmd {int result; void* mask; void* enable; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
typedef enum hnae3_loop { ____Placeholder_hnae3_loop } hnae3_loop ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int EIO ;
 int ENOTSUPP ;
 int HCLGE_CMD_SERDES_DONE_B ;
 void* HCLGE_CMD_SERDES_PARALLEL_INNER_LOOP_B ;
 void* HCLGE_CMD_SERDES_SERIAL_INNER_LOOP_B ;
 int HCLGE_CMD_SERDES_SUCCESS_B ;
 int HCLGE_OPC_SERDES_LOOPBACK ;
 int HCLGE_SERDES_RETRY_MS ;
 int HCLGE_SERDES_RETRY_NUM ;


 int dev_err (int *,char*,...) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int msleep (int ) ;

__attribute__((used)) static int hclge_cfg_serdes_loopback(struct hclge_dev *hdev, bool en,
         enum hnae3_loop loop_mode)
{



 struct hclge_serdes_lb_cmd *req;
 struct hclge_desc desc;
 int ret, i = 0;
 u8 loop_mode_b;

 req = (struct hclge_serdes_lb_cmd *)desc.data;
 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_SERDES_LOOPBACK, 0);

 switch (loop_mode) {
 case 128:
  loop_mode_b = HCLGE_CMD_SERDES_SERIAL_INNER_LOOP_B;
  break;
 case 129:
  loop_mode_b = HCLGE_CMD_SERDES_PARALLEL_INNER_LOOP_B;
  break;
 default:
  dev_err(&hdev->pdev->dev,
   "unsupported serdes loopback mode %d\n", loop_mode);
  return -ENOTSUPP;
 }

 if (en) {
  req->enable = loop_mode_b;
  req->mask = loop_mode_b;
 } else {
  req->mask = loop_mode_b;
 }

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "serdes loopback set fail, ret = %d\n", ret);
  return ret;
 }

 do {
  msleep(10);
  hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_SERDES_LOOPBACK,
        1);
  ret = hclge_cmd_send(&hdev->hw, &desc, 1);
  if (ret) {
   dev_err(&hdev->pdev->dev,
    "serdes loopback get, ret = %d\n", ret);
   return ret;
  }
 } while (++i < 100 &&
   !(req->result & HCLGE_CMD_SERDES_DONE_B));

 if (!(req->result & HCLGE_CMD_SERDES_DONE_B)) {
  dev_err(&hdev->pdev->dev, "serdes loopback set timeout\n");
  return -EBUSY;
 } else if (!(req->result & HCLGE_CMD_SERDES_SUCCESS_B)) {
  dev_err(&hdev->pdev->dev, "serdes loopback set failed in fw\n");
  return -EIO;
 }
 return ret;
}
