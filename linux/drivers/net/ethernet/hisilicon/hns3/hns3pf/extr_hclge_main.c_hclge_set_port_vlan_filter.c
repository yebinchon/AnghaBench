
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct hclge_vlan_filter_pf_cfg_cmd {size_t vlan_offset; int vlan_cfg; size_t* vlan_offset_bitmap; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
typedef int __be16 ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_VLAN_FILTER_PF_CFG ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_set_port_vlan_filter(struct hclge_dev *hdev, __be16 proto,
          u16 vlan_id, bool is_kill)
{
 struct hclge_vlan_filter_pf_cfg_cmd *req;
 struct hclge_desc desc;
 u8 vlan_offset_byte_val;
 u8 vlan_offset_byte;
 u8 vlan_offset_160;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_VLAN_FILTER_PF_CFG, 0);

 vlan_offset_160 = vlan_id / 160;
 vlan_offset_byte = (vlan_id % 160) / 8;
 vlan_offset_byte_val = 1 << (vlan_id % 8);

 req = (struct hclge_vlan_filter_pf_cfg_cmd *)desc.data;
 req->vlan_offset = vlan_offset_160;
 req->vlan_cfg = is_kill;
 req->vlan_offset_bitmap[vlan_offset_byte] = vlan_offset_byte_val;

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "port vlan command, send fail, ret =%d.\n", ret);
 return ret;
}
