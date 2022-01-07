
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct hclge_dev {int hw; TYPE_1__* pdev; } ;
struct hclge_desc {int flag; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int cpu_to_le16 (scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_cmd_query_error(struct hclge_dev *hdev,
     struct hclge_desc *desc, u32 cmd, u16 flag)
{
 struct device *dev = &hdev->pdev->dev;
 int desc_num = 1;
 int ret;

 hclge_cmd_setup_basic_desc(&desc[0], cmd, 1);
 if (flag) {
  desc[0].flag |= cpu_to_le16(flag);
  hclge_cmd_setup_basic_desc(&desc[1], cmd, 1);
  desc_num = 2;
 }

 ret = hclge_cmd_send(&hdev->hw, &desc[0], desc_num);
 if (ret)
  dev_err(dev, "query error cmd failed (%d)\n", ret);

 return ret;
}
