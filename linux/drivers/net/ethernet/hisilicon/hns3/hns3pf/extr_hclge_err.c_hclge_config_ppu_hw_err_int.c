
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int HCLGE_PPU_MPF_ECC_INT_CMD ;
 int HCLGE_PPU_MPF_OTHER_INT_CMD ;
 int HCLGE_PPU_PF_OTHER_INT_CMD ;
 int dev_err (struct device*,char*,int) ;
 int hclge_config_ppu_error_interrupts (struct hclge_dev*,int ,int) ;

__attribute__((used)) static int hclge_config_ppu_hw_err_int(struct hclge_dev *hdev, bool en)
{
 struct device *dev = &hdev->pdev->dev;
 int ret;

 ret = hclge_config_ppu_error_interrupts(hdev, HCLGE_PPU_MPF_ECC_INT_CMD,
      en);
 if (ret) {
  dev_err(dev, "fail(%d) to configure PPU MPF ECC error intr\n",
   ret);
  return ret;
 }

 ret = hclge_config_ppu_error_interrupts(hdev,
      HCLGE_PPU_MPF_OTHER_INT_CMD,
      en);
 if (ret) {
  dev_err(dev, "fail(%d) to configure PPU MPF other intr\n", ret);
  return ret;
 }

 ret = hclge_config_ppu_error_interrupts(hdev,
      HCLGE_PPU_PF_OTHER_INT_CMD, en);
 if (ret)
  dev_err(dev, "fail(%d) to configure PPU PF error interrupts\n",
   ret);
 return ret;
}
