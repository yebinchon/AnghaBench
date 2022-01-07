
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {int hw; TYPE_1__* pdev; } ;
struct hclge_desc {void** data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int HCLGE_TM_QCN_MEM_ERR_INT_EN ;
 int HCLGE_TM_QCN_MEM_INT_CFG ;
 int HCLGE_TM_SCH_ECC_ERR_INT_EN ;
 int HCLGE_TM_SCH_ECC_INT_EN ;
 void* cpu_to_le32 (int ) ;
 int dev_err (struct device*,char*,int) ;
 int hclge_cmd_query_error (struct hclge_dev*,struct hclge_desc*,int ,int ) ;
 int hclge_cmd_reuse_desc (struct hclge_desc*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_config_tm_hw_err_int(struct hclge_dev *hdev, bool en)
{
 struct device *dev = &hdev->pdev->dev;
 struct hclge_desc desc;
 int ret;


 hclge_cmd_setup_basic_desc(&desc, HCLGE_TM_SCH_ECC_INT_EN, 0);
 if (en)
  desc.data[0] = cpu_to_le32(HCLGE_TM_SCH_ECC_ERR_INT_EN);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(dev, "fail(%d) to configure TM SCH errors\n", ret);
  return ret;
 }


 ret = hclge_cmd_query_error(hdev, &desc, HCLGE_TM_QCN_MEM_INT_CFG, 0);
 if (ret) {
  dev_err(dev, "fail(%d) to read TM QCN CFG status\n", ret);
  return ret;
 }

 hclge_cmd_reuse_desc(&desc, 0);
 if (en)
  desc.data[1] = cpu_to_le32(HCLGE_TM_QCN_MEM_ERR_INT_EN);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(dev,
   "fail(%d) to configure TM QCN mem errors\n", ret);

 return ret;
}
