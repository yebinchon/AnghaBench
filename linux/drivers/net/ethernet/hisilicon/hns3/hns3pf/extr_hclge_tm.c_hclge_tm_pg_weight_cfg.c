
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct hclge_pg_weight_cmd {void* dwrr; void* pg_id; } ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;


 int HCLGE_OPC_TM_PG_WEIGHT ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_tm_pg_weight_cfg(struct hclge_dev *hdev, u8 pg_id,
      u8 dwrr)
{
 struct hclge_pg_weight_cmd *weight;
 struct hclge_desc desc;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_TM_PG_WEIGHT, 0);

 weight = (struct hclge_pg_weight_cmd *)desc.data;

 weight->pg_id = pg_id;
 weight->dwrr = dwrr;

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
