
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {int hw; TYPE_1__* pdev; } ;
struct hclge_desc {int * data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int revision; struct device dev; } ;


 int HCLGE_NCSI_ERR_INT_EN ;
 int HCLGE_NCSI_INT_EN ;
 int cpu_to_le32 (int ) ;
 int dev_err (struct device*,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_config_ncsi_hw_err_int(struct hclge_dev *hdev, bool en)
{
 struct device *dev = &hdev->pdev->dev;
 struct hclge_desc desc;
 int ret;

 if (hdev->pdev->revision < 0x21)
  return 0;


 hclge_cmd_setup_basic_desc(&desc, HCLGE_NCSI_INT_EN, 0);
 if (en)
  desc.data[0] = cpu_to_le32(HCLGE_NCSI_ERR_INT_EN);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(dev,
   "fail(%d) to configure  NCSI error interrupts\n", ret);

 return ret;
}
