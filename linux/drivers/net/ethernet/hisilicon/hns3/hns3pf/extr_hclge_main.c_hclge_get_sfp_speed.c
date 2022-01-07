
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hclge_sfp_info_cmd {int speed; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int HCLGE_OPC_GET_SFP_INFO ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_get_sfp_speed(struct hclge_dev *hdev, u32 *speed)
{
 struct hclge_sfp_info_cmd *resp;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_GET_SFP_INFO, 1);
 resp = (struct hclge_sfp_info_cmd *)desc.data;
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret == -EOPNOTSUPP) {
  dev_warn(&hdev->pdev->dev,
    "IMP do not support get SFP speed %d\n", ret);
  return ret;
 } else if (ret) {
  dev_err(&hdev->pdev->dev, "get sfp speed failed %d\n", ret);
  return ret;
 }

 *speed = le32_to_cpu(resp->speed);

 return 0;
}
