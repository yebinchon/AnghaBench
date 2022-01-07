
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_cfg_gro_status_cmd {int gro_en; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_GRO_GENERIC_CONFIG ;
 int cpu_to_le16 (int) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_dev_gro_supported (struct hclge_dev*) ;

__attribute__((used)) static int hclge_config_gro(struct hclge_dev *hdev, bool en)
{
 struct hclge_cfg_gro_status_cmd *req;
 struct hclge_desc desc;
 int ret;

 if (!hnae3_dev_gro_supported(hdev))
  return 0;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_GRO_GENERIC_CONFIG, 0);
 req = (struct hclge_cfg_gro_status_cmd *)desc.data;

 req->gro_en = cpu_to_le16(en ? 1 : 0);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "GRO hardware config cmd failed, ret = %d\n", ret);

 return ret;
}
