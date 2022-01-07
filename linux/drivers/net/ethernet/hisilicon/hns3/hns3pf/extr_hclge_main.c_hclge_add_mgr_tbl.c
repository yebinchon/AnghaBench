
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hclge_mac_mgr_tbl_entry_cmd {int dummy; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {int retval; int * data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_MAC_ETHTYPE_ADD ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_get_mac_ethertype_cmd_status (struct hclge_dev*,int ,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,struct hclge_mac_mgr_tbl_entry_cmd const*,int) ;

__attribute__((used)) static int hclge_add_mgr_tbl(struct hclge_dev *hdev,
        const struct hclge_mac_mgr_tbl_entry_cmd *req)
{
 struct hclge_desc desc;
 u8 resp_code;
 u16 retval;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_MAC_ETHTYPE_ADD, 0);
 memcpy(desc.data, req, sizeof(struct hclge_mac_mgr_tbl_entry_cmd));

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "add mac ethertype failed for cmd_send, ret =%d.\n",
   ret);
  return ret;
 }

 resp_code = (le32_to_cpu(desc.data[0]) >> 8) & 0xff;
 retval = le16_to_cpu(desc.retval);

 return hclge_get_mac_ethertype_cmd_status(hdev, retval, resp_code);
}
