
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct hclge_fd_ad_data {int counter_id; int use_next_stage; int use_counter; int queue_id; int forward_to_direct_queue; int drop_packet; int rule_id; int write_rule_id_to_bd; } ;
struct hclge_fd_ad_config_cmd {int ad_data; int stage; int index; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_FD_AD_COUNTER_NUM_M ;
 int HCLGE_FD_AD_COUNTER_NUM_S ;
 int HCLGE_FD_AD_DIRECT_QID_B ;
 int HCLGE_FD_AD_DROP_B ;
 int HCLGE_FD_AD_NXT_KEY_M ;
 int HCLGE_FD_AD_NXT_KEY_S ;
 int HCLGE_FD_AD_NXT_STEP_B ;
 int HCLGE_FD_AD_QID_M ;
 int HCLGE_FD_AD_QID_S ;
 int HCLGE_FD_AD_RULE_ID_M ;
 int HCLGE_FD_AD_RULE_ID_S ;
 int HCLGE_FD_AD_USE_COUNTER_B ;
 int HCLGE_FD_AD_WR_RULE_ID_B ;
 int HCLGE_OPC_FD_AD_OP ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int,int ,int ) ;
 int hnae3_set_field (int,int ,int ,int ) ;

__attribute__((used)) static int hclge_fd_ad_config(struct hclge_dev *hdev, u8 stage, int loc,
         struct hclge_fd_ad_data *action)
{
 struct hclge_fd_ad_config_cmd *req;
 struct hclge_desc desc;
 u64 ad_data = 0;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_FD_AD_OP, 0);

 req = (struct hclge_fd_ad_config_cmd *)desc.data;
 req->index = cpu_to_le32(loc);
 req->stage = stage;

 hnae3_set_bit(ad_data, HCLGE_FD_AD_WR_RULE_ID_B,
        action->write_rule_id_to_bd);
 hnae3_set_field(ad_data, HCLGE_FD_AD_RULE_ID_M, HCLGE_FD_AD_RULE_ID_S,
   action->rule_id);
 ad_data <<= 32;
 hnae3_set_bit(ad_data, HCLGE_FD_AD_DROP_B, action->drop_packet);
 hnae3_set_bit(ad_data, HCLGE_FD_AD_DIRECT_QID_B,
        action->forward_to_direct_queue);
 hnae3_set_field(ad_data, HCLGE_FD_AD_QID_M, HCLGE_FD_AD_QID_S,
   action->queue_id);
 hnae3_set_bit(ad_data, HCLGE_FD_AD_USE_COUNTER_B, action->use_counter);
 hnae3_set_field(ad_data, HCLGE_FD_AD_COUNTER_NUM_M,
   HCLGE_FD_AD_COUNTER_NUM_S, action->counter_id);
 hnae3_set_bit(ad_data, HCLGE_FD_AD_NXT_STEP_B, action->use_next_stage);
 hnae3_set_field(ad_data, HCLGE_FD_AD_NXT_KEY_M, HCLGE_FD_AD_NXT_KEY_S,
   action->counter_id);

 req->ad_data = cpu_to_le64(ad_data);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev, "fd ad config fail, ret=%d\n", ret);

 return ret;
}
