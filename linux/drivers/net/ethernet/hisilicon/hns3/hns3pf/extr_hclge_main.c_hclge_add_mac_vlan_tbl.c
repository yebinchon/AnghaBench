
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mac_vlan_tbl_entry_cmd {int dummy; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {int retval; int * data; int flag; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_CMD_FLAG_NEXT ;
 int HCLGE_MAC_VLAN_ADD ;
 int HCLGE_OPC_MAC_VLAN_ADD ;
 int cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_reuse_desc (struct hclge_desc*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_get_mac_vlan_cmd_status (struct hclge_vport*,int ,int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,struct hclge_mac_vlan_tbl_entry_cmd*,int) ;

__attribute__((used)) static int hclge_add_mac_vlan_tbl(struct hclge_vport *vport,
      struct hclge_mac_vlan_tbl_entry_cmd *req,
      struct hclge_desc *mc_desc)
{
 struct hclge_dev *hdev = vport->back;
 int cfg_status;
 u8 resp_code;
 u16 retval;
 int ret;

 if (!mc_desc) {
  struct hclge_desc desc;

  hclge_cmd_setup_basic_desc(&desc,
        HCLGE_OPC_MAC_VLAN_ADD,
        0);
  memcpy(desc.data, req,
         sizeof(struct hclge_mac_vlan_tbl_entry_cmd));
  ret = hclge_cmd_send(&hdev->hw, &desc, 1);
  resp_code = (le32_to_cpu(desc.data[0]) >> 8) & 0xff;
  retval = le16_to_cpu(desc.retval);

  cfg_status = hclge_get_mac_vlan_cmd_status(vport, retval,
          resp_code,
          HCLGE_MAC_VLAN_ADD);
 } else {
  hclge_cmd_reuse_desc(&mc_desc[0], 0);
  mc_desc[0].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
  hclge_cmd_reuse_desc(&mc_desc[1], 0);
  mc_desc[1].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
  hclge_cmd_reuse_desc(&mc_desc[2], 0);
  mc_desc[2].flag &= cpu_to_le16(~HCLGE_CMD_FLAG_NEXT);
  memcpy(mc_desc[0].data, req,
         sizeof(struct hclge_mac_vlan_tbl_entry_cmd));
  ret = hclge_cmd_send(&hdev->hw, mc_desc, 3);
  resp_code = (le32_to_cpu(mc_desc[0].data[0]) >> 8) & 0xff;
  retval = le16_to_cpu(mc_desc[0].retval);

  cfg_status = hclge_get_mac_vlan_cmd_status(vport, retval,
          resp_code,
          HCLGE_MAC_VLAN_ADD);
 }

 if (ret) {
  dev_err(&hdev->pdev->dev,
   "add mac addr failed for cmd_send, ret =%d.\n",
   ret);
  return ret;
 }

 return cfg_status;
}
