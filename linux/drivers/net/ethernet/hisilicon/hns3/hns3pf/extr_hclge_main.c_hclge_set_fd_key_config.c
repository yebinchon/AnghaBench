
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hclge_set_fd_key_config_cmd {int stage; void* meta_data_mask; void* tuple_mask; int outer_dipv6_word_en; int outer_sipv6_word_en; int inner_dipv6_word_en; int inner_sipv6_word_en; int key_select; } ;
struct hclge_fd_key_cfg {int meta_data_active; int tuple_active; int outer_dipv6_word_en; int outer_sipv6_word_en; int inner_dipv6_word_en; int inner_sipv6_word_en; int key_sel; } ;
struct TYPE_3__ {struct hclge_fd_key_cfg* key_cfg; } ;
struct hclge_dev {TYPE_2__* pdev; int hw; TYPE_1__ fd_cfg; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_4__ {int dev; } ;


 int HCLGE_OPC_FD_KEY_CONFIG ;
 void* cpu_to_le32 (int ) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_set_fd_key_config(struct hclge_dev *hdev, int stage_num)
{
 struct hclge_set_fd_key_config_cmd *req;
 struct hclge_fd_key_cfg *stage;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_FD_KEY_CONFIG, 0);

 req = (struct hclge_set_fd_key_config_cmd *)desc.data;
 stage = &hdev->fd_cfg.key_cfg[stage_num];
 req->stage = stage_num;
 req->key_select = stage->key_sel;
 req->inner_sipv6_word_en = stage->inner_sipv6_word_en;
 req->inner_dipv6_word_en = stage->inner_dipv6_word_en;
 req->outer_sipv6_word_en = stage->outer_sipv6_word_en;
 req->outer_dipv6_word_en = stage->outer_dipv6_word_en;
 req->tuple_mask = cpu_to_le32(~stage->tuple_active);
 req->meta_data_mask = cpu_to_le32(~stage->meta_data_active);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev, "set fd key fail, ret=%d\n", ret);

 return ret;
}
