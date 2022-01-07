
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {int hw; TYPE_1__* pdev; } ;
struct hclge_desc {void** data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int revision; struct device dev; } ;


 int HCLGE_CONFIG_ROCEE_RAS_INT_EN ;
 int HCLGE_ROCEE_RAS_CE_INT_EN ;
 int HCLGE_ROCEE_RAS_CE_INT_EN_MASK ;
 int HCLGE_ROCEE_RAS_NFE_INT_EN ;
 int HCLGE_ROCEE_RAS_NFE_INT_EN_MASK ;
 void* cpu_to_le32 (int ) ;
 int dev_err (struct device*,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_log_and_clear_rocee_ras_error (struct hclge_dev*) ;
 int hnae3_dev_roce_supported (struct hclge_dev*) ;

int hclge_config_rocee_ras_interrupt(struct hclge_dev *hdev, bool en)
{
 struct device *dev = &hdev->pdev->dev;
 struct hclge_desc desc;
 int ret;

 if (hdev->pdev->revision < 0x21 || !hnae3_dev_roce_supported(hdev))
  return 0;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_CONFIG_ROCEE_RAS_INT_EN, 0);
 if (en) {

  desc.data[0] = cpu_to_le32(HCLGE_ROCEE_RAS_NFE_INT_EN);
  desc.data[1] = cpu_to_le32(HCLGE_ROCEE_RAS_CE_INT_EN);

  hclge_log_and_clear_rocee_ras_error(hdev);
 }
 desc.data[2] = cpu_to_le32(HCLGE_ROCEE_RAS_NFE_INT_EN_MASK);
 desc.data[3] = cpu_to_le32(HCLGE_ROCEE_RAS_CE_INT_EN_MASK);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(dev, "failed(%d) to config ROCEE RAS interrupt\n", ret);

 return ret;
}
