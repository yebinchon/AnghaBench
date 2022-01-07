
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct hclge_vlan_filter_vf_cfg_cmd {int vlan_cfg; size_t* vf_bitmap; int resp_code; int vlan_id; } ;
struct hclge_dev {TYPE_1__* pdev; int vf_vlan_full; int hw; } ;
struct hclge_desc {scalar_t__ data; int flag; } ;
typedef int __be16 ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int HCLGE_CMD_FLAG_NEXT ;
 size_t HCLGE_MAX_VF_BYTES ;
 int HCLGE_OPC_VLAN_FILTER_VF_CFG ;
 int HCLGE_VF_VLAN_DEL_NO_FOUND ;
 int HCLGE_VF_VLAN_NO_ENTRY ;
 int cpu_to_le16 (int) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int set_bit (int,int ) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int hclge_set_vf_vlan_common(struct hclge_dev *hdev, u16 vfid,
        bool is_kill, u16 vlan,
        __be16 proto)
{

 struct hclge_vlan_filter_vf_cfg_cmd *req0;
 struct hclge_vlan_filter_vf_cfg_cmd *req1;
 struct hclge_desc desc[2];
 u8 vf_byte_val;
 u8 vf_byte_off;
 int ret;




 if (test_bit(vfid, hdev->vf_vlan_full) && !is_kill)
  return 0;

 hclge_cmd_setup_basic_desc(&desc[0],
       HCLGE_OPC_VLAN_FILTER_VF_CFG, 0);
 hclge_cmd_setup_basic_desc(&desc[1],
       HCLGE_OPC_VLAN_FILTER_VF_CFG, 0);

 desc[0].flag |= cpu_to_le16(HCLGE_CMD_FLAG_NEXT);

 vf_byte_off = vfid / 8;
 vf_byte_val = 1 << (vfid % 8);

 req0 = (struct hclge_vlan_filter_vf_cfg_cmd *)desc[0].data;
 req1 = (struct hclge_vlan_filter_vf_cfg_cmd *)desc[1].data;

 req0->vlan_id = cpu_to_le16(vlan);
 req0->vlan_cfg = is_kill;

 if (vf_byte_off < 16)
  req0->vf_bitmap[vf_byte_off] = vf_byte_val;
 else
  req1->vf_bitmap[vf_byte_off - 16] = vf_byte_val;

 ret = hclge_cmd_send(&hdev->hw, desc, 2);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Send vf vlan command fail, ret =%d.\n",
   ret);
  return ret;
 }

 if (!is_kill) {

  if (!req0->resp_code || req0->resp_code == 1)
   return 0;

  if (req0->resp_code == 2) {
   set_bit(vfid, hdev->vf_vlan_full);
   dev_warn(&hdev->pdev->dev,
     "vf vlan table is full, vf vlan filter is disabled\n");
   return 0;
  }

  dev_err(&hdev->pdev->dev,
   "Add vf vlan filter fail, ret =%d.\n",
   req0->resp_code);
 } else {

  if (!req0->resp_code)
   return 0;






  if (req0->resp_code == 1)
   return 0;

  dev_err(&hdev->pdev->dev,
   "Kill vf vlan filter fail, ret =%d.\n",
   req0->resp_code);
 }

 return -EIO;
}
