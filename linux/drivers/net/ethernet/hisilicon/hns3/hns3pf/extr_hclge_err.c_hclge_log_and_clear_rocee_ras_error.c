
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {int hw; TYPE_1__* pdev; } ;
struct hclge_desc {int * data; } ;
struct device {int dummy; } ;
typedef enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;
struct TYPE_2__ {struct device dev; } ;


 int HCLGE_QUERY_CLEAR_ROCEE_RAS_INT ;
 unsigned int HCLGE_ROCEE_AXI_ERR_INT_MASK ;
 unsigned int HCLGE_ROCEE_BERR_INT_MASK ;
 unsigned int HCLGE_ROCEE_ECC_INT_MASK ;
 unsigned int HCLGE_ROCEE_OVF_INT_MASK ;
 unsigned int HCLGE_ROCEE_RERR_INT_MASK ;
 int HNAE3_FUNC_RESET ;
 int HNAE3_GLOBAL_RESET ;
 int HNAE3_NONE_RESET ;
 int dev_err (struct device*,char*,...) ;
 int hclge_cmd_query_error (struct hclge_dev*,struct hclge_desc*,int ,int ) ;
 int hclge_cmd_reuse_desc (struct hclge_desc*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_log_rocee_axi_error (struct hclge_dev*) ;
 int hclge_log_rocee_ecc_error (struct hclge_dev*) ;
 int hclge_log_rocee_ovf_error (struct hclge_dev*) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static enum hnae3_reset_type
hclge_log_and_clear_rocee_ras_error(struct hclge_dev *hdev)
{
 enum hnae3_reset_type reset_type = HNAE3_NONE_RESET;
 struct device *dev = &hdev->pdev->dev;
 struct hclge_desc desc[2];
 unsigned int status;
 int ret;


 ret = hclge_cmd_query_error(hdev, &desc[0],
        HCLGE_QUERY_CLEAR_ROCEE_RAS_INT, 0);
 if (ret) {
  dev_err(dev, "failed(%d) to query ROCEE RAS INT SRC\n", ret);

  return HNAE3_GLOBAL_RESET;
 }

 status = le32_to_cpu(desc[0].data[0]);

 if (status & HCLGE_ROCEE_AXI_ERR_INT_MASK) {
  if (status & HCLGE_ROCEE_RERR_INT_MASK)
   dev_err(dev, "ROCEE RAS AXI rresp error\n");

  if (status & HCLGE_ROCEE_BERR_INT_MASK)
   dev_err(dev, "ROCEE RAS AXI bresp error\n");

  reset_type = HNAE3_FUNC_RESET;

  ret = hclge_log_rocee_axi_error(hdev);
  if (ret)
   return HNAE3_GLOBAL_RESET;
 }

 if (status & HCLGE_ROCEE_ECC_INT_MASK) {
  dev_err(dev, "ROCEE RAS 2bit ECC error\n");
  reset_type = HNAE3_GLOBAL_RESET;

  ret = hclge_log_rocee_ecc_error(hdev);
  if (ret)
   return HNAE3_GLOBAL_RESET;
 }

 if (status & HCLGE_ROCEE_OVF_INT_MASK) {
  ret = hclge_log_rocee_ovf_error(hdev);
  if (ret) {
   dev_err(dev, "failed(%d) to process ovf error\n", ret);

   return HNAE3_GLOBAL_RESET;
  }
 }


 hclge_cmd_reuse_desc(&desc[0], 0);
 ret = hclge_cmd_send(&hdev->hw, &desc[0], 1);
 if (ret) {
  dev_err(dev, "failed(%d) to clear ROCEE RAS error\n", ret);

  return HNAE3_GLOBAL_RESET;
 }

 return reset_type;
}
