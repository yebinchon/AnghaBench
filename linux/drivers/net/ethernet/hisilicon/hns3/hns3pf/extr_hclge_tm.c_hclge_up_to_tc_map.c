
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;


 int HCLGE_OPC_PRI_TO_TC_MAPPING ;
 scalar_t__ HNAE3_MAX_USER_PRIO ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_fill_pri_array (struct hclge_dev*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static int hclge_up_to_tc_map(struct hclge_dev *hdev)
{
 struct hclge_desc desc;
 u8 *pri = (u8 *)desc.data;
 u8 pri_id;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_PRI_TO_TC_MAPPING, 0);

 for (pri_id = 0; pri_id < HNAE3_MAX_USER_PRIO; pri_id++) {
  ret = hclge_fill_pri_array(hdev, pri, pri_id);
  if (ret)
   return ret;
 }

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
