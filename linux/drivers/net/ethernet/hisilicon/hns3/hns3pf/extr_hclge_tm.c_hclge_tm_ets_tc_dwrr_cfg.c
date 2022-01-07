
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hclge_pg_info {int * tc_dwrr; } ;
struct hclge_ets_tc_weight_cmd {int weight_offset; int * tc_weight; } ;
struct TYPE_4__ {TYPE_1__* tc_info; struct hclge_pg_info* pg_info; } ;
struct hclge_dev {int hw_tc_map; int hw; TYPE_2__ tm_info; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_3__ {size_t pgid; } ;


 int BIT (unsigned int) ;
 int DEFAULT_TC_OFFSET ;
 int DEFAULT_TC_WEIGHT ;
 int HCLGE_OPC_ETS_TC_WEIGHT ;
 unsigned int HNAE3_MAX_TC ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_tm_ets_tc_dwrr_cfg(struct hclge_dev *hdev)
{



 struct hclge_ets_tc_weight_cmd *ets_weight;
 struct hclge_desc desc;
 unsigned int i;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_ETS_TC_WEIGHT, 0);
 ets_weight = (struct hclge_ets_tc_weight_cmd *)desc.data;

 for (i = 0; i < HNAE3_MAX_TC; i++) {
  struct hclge_pg_info *pg_info;

  ets_weight->tc_weight[i] = 1;

  if (!(hdev->hw_tc_map & BIT(i)))
   continue;

  pg_info =
   &hdev->tm_info.pg_info[hdev->tm_info.tc_info[i].pgid];
  ets_weight->tc_weight[i] = pg_info->tc_dwrr[i];
 }

 ets_weight->weight_offset = 14;

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
