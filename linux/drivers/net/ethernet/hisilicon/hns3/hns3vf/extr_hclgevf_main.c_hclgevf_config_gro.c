
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclgevf_dev {TYPE_1__* pdev; int hw; } ;
struct hclgevf_desc {scalar_t__ data; } ;
struct hclgevf_cfg_gro_status_cmd {int gro_en; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGEVF_OPC_GRO_GENERIC_CONFIG ;
 int cpu_to_le16 (int) ;
 int dev_err (int *,char*,int) ;
 int hclgevf_cmd_send (int *,struct hclgevf_desc*,int) ;
 int hclgevf_cmd_setup_basic_desc (struct hclgevf_desc*,int ,int) ;
 int hnae3_dev_gro_supported (struct hclgevf_dev*) ;

__attribute__((used)) static int hclgevf_config_gro(struct hclgevf_dev *hdev, bool en)
{
 struct hclgevf_cfg_gro_status_cmd *req;
 struct hclgevf_desc desc;
 int ret;

 if (!hnae3_dev_gro_supported(hdev))
  return 0;

 hclgevf_cmd_setup_basic_desc(&desc, HCLGEVF_OPC_GRO_GENERIC_CONFIG,
         0);
 req = (struct hclgevf_cfg_gro_status_cmd *)desc.data;

 req->gro_en = cpu_to_le16(en ? 1 : 0);

 ret = hclgevf_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "VF GRO hardware config cmd failed, ret = %d.\n", ret);

 return ret;
}
