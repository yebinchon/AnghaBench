
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct hclge_pg_to_pri_link_cmd {void* pri_bit_map; void* pg_id; } ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;


 int HCLGE_OPC_TM_PG_TO_PRI_LINK ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_tm_pg_to_pri_map_cfg(struct hclge_dev *hdev,
          u8 pg_id, u8 pri_bit_map)
{
 struct hclge_pg_to_pri_link_cmd *map;
 struct hclge_desc desc;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_TM_PG_TO_PRI_LINK, 0);

 map = (struct hclge_pg_to_pri_link_cmd *)desc.data;

 map->pg_id = pg_id;
 map->pri_bit_map = pri_bit_map;

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
