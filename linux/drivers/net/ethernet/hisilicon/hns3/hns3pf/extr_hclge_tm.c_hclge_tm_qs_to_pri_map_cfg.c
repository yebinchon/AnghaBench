
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hclge_qs_to_pri_link_cmd {int link_vld; int priority; int qs_id; } ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;


 int HCLGE_OPC_TM_QS_TO_PRI_LINK ;
 int HCLGE_TM_QS_PRI_LINK_VLD_MSK ;
 int cpu_to_le16 (int ) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_tm_qs_to_pri_map_cfg(struct hclge_dev *hdev,
          u16 qs_id, u8 pri)
{
 struct hclge_qs_to_pri_link_cmd *map;
 struct hclge_desc desc;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_TM_QS_TO_PRI_LINK, 0);

 map = (struct hclge_qs_to_pri_link_cmd *)desc.data;

 map->qs_id = cpu_to_le16(qs_id);
 map->priority = pri;
 map->link_vld = HCLGE_TM_QS_PRI_LINK_VLD_MSK;

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
