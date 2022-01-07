
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hclge_nq_to_qs_link_cmd {void* qset_id; void* nq_id; } ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;


 int HCLGE_OPC_TM_NQ_TO_QS_LINK ;
 int HCLGE_TM_Q_QS_LINK_VLD_MSK ;
 void* cpu_to_le16 (int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_tm_q_to_qs_map_cfg(struct hclge_dev *hdev,
        u16 q_id, u16 qs_id)
{
 struct hclge_nq_to_qs_link_cmd *map;
 struct hclge_desc desc;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_TM_NQ_TO_QS_LINK, 0);

 map = (struct hclge_nq_to_qs_link_cmd *)desc.data;

 map->nq_id = cpu_to_le16(q_id);
 map->qset_id = cpu_to_le16(qs_id | HCLGE_TM_Q_QS_LINK_VLD_MSK);

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
