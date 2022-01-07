
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_TQP_RESET_TRY_TIMES ;
 int dev_err (int *,char*,...) ;
 int hclge_covert_handle_qid_global (struct hnae3_handle*,int ) ;
 int hclge_get_reset_status (struct hclge_dev*,int ) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_send_reset_tqp_cmd (struct hclge_dev*,int ,int) ;
 int hclge_tqp_enable (struct hclge_dev*,int ,int ,int) ;
 int usleep_range (int,int) ;

int hclge_reset_tqp(struct hnae3_handle *handle, u16 queue_id)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 int reset_try_times = 0;
 int reset_status;
 u16 queue_gid;
 int ret;

 queue_gid = hclge_covert_handle_qid_global(handle, queue_id);

 ret = hclge_tqp_enable(hdev, queue_id, 0, 0);
 if (ret) {
  dev_err(&hdev->pdev->dev, "Disable tqp fail, ret = %d\n", ret);
  return ret;
 }

 ret = hclge_send_reset_tqp_cmd(hdev, queue_gid, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Send reset tqp cmd fail, ret = %d\n", ret);
  return ret;
 }

 while (reset_try_times++ < HCLGE_TQP_RESET_TRY_TIMES) {
  reset_status = hclge_get_reset_status(hdev, queue_gid);
  if (reset_status)
   break;


  usleep_range(1000, 1200);
 }

 if (reset_try_times >= HCLGE_TQP_RESET_TRY_TIMES) {
  dev_err(&hdev->pdev->dev, "Reset TQP fail\n");
  return ret;
 }

 ret = hclge_send_reset_tqp_cmd(hdev, queue_gid, 0);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "Deassert the soft reset fail, ret = %d\n", ret);

 return ret;
}
