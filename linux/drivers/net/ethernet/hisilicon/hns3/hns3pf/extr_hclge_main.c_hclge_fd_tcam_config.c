
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hclge_fd_tcam_config_3_cmd {int tcam_data; } ;
struct hclge_fd_tcam_config_2_cmd {int tcam_data; } ;
struct hclge_fd_tcam_config_1_cmd {int xy_sel; int entry_vld; int tcam_data; int index; int port_info; int stage; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; int flag; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_CMD_FLAG_NEXT ;
 int HCLGE_FD_EPORT_SW_EN_B ;
 int HCLGE_OPC_FD_TCAM_OP ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int ) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int hclge_fd_tcam_config(struct hclge_dev *hdev, u8 stage, bool sel_x,
    int loc, u8 *key, bool is_add)
{
 struct hclge_fd_tcam_config_1_cmd *req1;
 struct hclge_fd_tcam_config_2_cmd *req2;
 struct hclge_fd_tcam_config_3_cmd *req3;
 struct hclge_desc desc[3];
 int ret;

 hclge_cmd_setup_basic_desc(&desc[0], HCLGE_OPC_FD_TCAM_OP, 0);
 desc[0].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
 hclge_cmd_setup_basic_desc(&desc[1], HCLGE_OPC_FD_TCAM_OP, 0);
 desc[1].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
 hclge_cmd_setup_basic_desc(&desc[2], HCLGE_OPC_FD_TCAM_OP, 0);

 req1 = (struct hclge_fd_tcam_config_1_cmd *)desc[0].data;
 req2 = (struct hclge_fd_tcam_config_2_cmd *)desc[1].data;
 req3 = (struct hclge_fd_tcam_config_3_cmd *)desc[2].data;

 req1->stage = stage;
 req1->xy_sel = sel_x ? 1 : 0;
 hnae3_set_bit(req1->port_info, HCLGE_FD_EPORT_SW_EN_B, 0);
 req1->index = cpu_to_le32(loc);
 req1->entry_vld = sel_x ? is_add : 0;

 if (key) {
  memcpy(req1->tcam_data, &key[0], sizeof(req1->tcam_data));
  memcpy(req2->tcam_data, &key[sizeof(req1->tcam_data)],
         sizeof(req2->tcam_data));
  memcpy(req3->tcam_data, &key[sizeof(req1->tcam_data) +
         sizeof(req2->tcam_data)], sizeof(req3->tcam_data));
 }

 ret = hclge_cmd_send(&hdev->hw, desc, 3);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "config tcam key fail, ret=%d\n",
   ret);

 return ret;
}
