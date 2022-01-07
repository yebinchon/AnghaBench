
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_sfp_info_cmd {int active_fec; int autoneg_ability; int autoneg; scalar_t__ speed_ability; scalar_t__ module_type; scalar_t__ speed; void* query_type; } ;
struct hclge_mac {void* speed_type; int fec_mode; int support_autoneg; int autoneg; void* speed_ability; void* module_type; void* speed; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int ) ;
 int EOPNOTSUPP ;
 int HCLGE_OPC_GET_SFP_INFO ;
 void* QUERY_ACTIVE_SPEED ;
 void* QUERY_SFP_SPEED ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 void* le32_to_cpu (scalar_t__) ;

__attribute__((used)) static int hclge_get_sfp_info(struct hclge_dev *hdev, struct hclge_mac *mac)
{
 struct hclge_sfp_info_cmd *resp;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_GET_SFP_INFO, 1);
 resp = (struct hclge_sfp_info_cmd *)desc.data;

 resp->query_type = QUERY_ACTIVE_SPEED;

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret == -EOPNOTSUPP) {
  dev_warn(&hdev->pdev->dev,
    "IMP does not support get SFP info %d\n", ret);
  return ret;
 } else if (ret) {
  dev_err(&hdev->pdev->dev, "get sfp info failed %d\n", ret);
  return ret;
 }

 mac->speed = le32_to_cpu(resp->speed);



 if (resp->speed_ability) {
  mac->module_type = le32_to_cpu(resp->module_type);
  mac->speed_ability = le32_to_cpu(resp->speed_ability);
  mac->autoneg = resp->autoneg;
  mac->support_autoneg = resp->autoneg_ability;
  mac->speed_type = QUERY_ACTIVE_SPEED;
  if (!resp->active_fec)
   mac->fec_mode = 0;
  else
   mac->fec_mode = BIT(resp->active_fec);
 } else {
  mac->speed_type = QUERY_SFP_SPEED;
 }

 return 0;
}
