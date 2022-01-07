
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct hclge_vlan_filter_ctrl_cmd {void* vf_id; void* vlan_fe; void* vlan_type; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_VLAN_FILTER_CTRL ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_set_vlan_filter_ctrl(struct hclge_dev *hdev, u8 vlan_type,
          u8 fe_type, bool filter_en, u8 vf_id)
{
 struct hclge_vlan_filter_ctrl_cmd *req;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_VLAN_FILTER_CTRL, 0);

 req = (struct hclge_vlan_filter_ctrl_cmd *)desc.data;
 req->vlan_type = vlan_type;
 req->vlan_fe = filter_en ? fe_type : 0;
 req->vf_id = vf_id;

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev, "set vlan filter fail, ret =%d.\n",
   ret);

 return ret;
}
