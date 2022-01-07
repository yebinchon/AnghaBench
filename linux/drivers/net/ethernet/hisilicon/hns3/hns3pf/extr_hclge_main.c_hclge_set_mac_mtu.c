
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_config_max_frm_size_cmd {int min_frm_size; int max_frm_size; } ;


 int HCLGE_MAC_MIN_FRAME ;
 int HCLGE_OPC_CONFIG_MAX_FRM_SIZE ;
 int cpu_to_le16 (int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_set_mac_mtu(struct hclge_dev *hdev, int new_mps)
{
 struct hclge_config_max_frm_size_cmd *req;
 struct hclge_desc desc;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CONFIG_MAX_FRM_SIZE, 0);

 req = (struct hclge_config_max_frm_size_cmd *)desc.data;
 req->max_frm_size = cpu_to_le16(new_mps);
 req->min_frm_size = HCLGE_MAC_MIN_FRAME;

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
