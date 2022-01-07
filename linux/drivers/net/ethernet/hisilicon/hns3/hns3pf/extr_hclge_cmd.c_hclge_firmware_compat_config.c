
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclge_firmware_compat_cmd {int compat; } ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;


 int HCLGE_LINK_EVENT_REPORT_EN_B ;
 int HCLGE_NCSI_ERROR_REPORT_EN_B ;
 int HCLGE_OPC_M7_COMPAT_CFG ;
 int cpu_to_le32 (int ) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int) ;

__attribute__((used)) static int hclge_firmware_compat_config(struct hclge_dev *hdev)
{
 struct hclge_firmware_compat_cmd *req;
 struct hclge_desc desc;
 u32 compat = 0;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_M7_COMPAT_CFG, 0);

 req = (struct hclge_firmware_compat_cmd *)desc.data;

 hnae3_set_bit(compat, HCLGE_LINK_EVENT_REPORT_EN_B, 1);
 hnae3_set_bit(compat, HCLGE_NCSI_ERROR_REPORT_EN_B, 1);
 req->compat = cpu_to_le32(compat);

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
