
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
 int HCLGE_MAC_VLAN_LKUP ;
 int HCLGE_OPC_MAC_VLAN_ADD ;
 int cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_get_mac_vlan_cmd_status (struct hclge_vport*,int ,int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,struct hclge_mac_vlan_tbl_entry_cmd*,int) ;

__attribute__((used)) static int hclge_lookup_mac_vlan_tbl(struct hclge_vport *vport,
         struct hclge_mac_vlan_tbl_entry_cmd *req,
         struct hclge_desc *desc,
         bool is_mc)
{
 struct hclge_dev *hdev = vport->back;
 u8 resp_code;
 u16 retval;
 int ret;

 hclge_cmd_setup_basic_desc(&desc[0], HCLGE_OPC_MAC_VLAN_ADD, 1);
 if (is_mc) {
  desc[0].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
  memcpy(desc[0].data,
         req,
         sizeof(struct hclge_mac_vlan_tbl_entry_cmd));
  hclge_cmd_setup_basic_desc(&desc[1],
        HCLGE_OPC_MAC_VLAN_ADD,
        1);
  desc[1].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);
  hclge_cmd_setup_basic_desc(&desc[2],
        HCLGE_OPC_MAC_VLAN_ADD,
        1);
  ret = hclge_cmd_send(&hdev->hw, desc, 3);
 } else {
  memcpy(desc[0].data,
         req,
         sizeof(struct hclge_mac_vlan_tbl_entry_cmd));
  ret = hclge_cmd_send(&hdev->hw, desc, 1);
 }
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "lookup mac addr failed for cmd_send, ret =%d.\n",
   ret);
  return ret;
 }
 resp_code = (le32_to_cpu(desc[0].data[0]) >> 8) & 0xff;
 retval = le16_to_cpu(desc[0].retval);

 return hclge_get_mac_vlan_cmd_status(vport, retval, resp_code,
          HCLGE_MAC_VLAN_LKUP);
}
