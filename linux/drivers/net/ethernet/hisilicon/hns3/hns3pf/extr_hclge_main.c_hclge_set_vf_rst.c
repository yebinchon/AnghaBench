
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vf_rst_cmd {int dest_vfid; int vf_rst; } ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;


 int HCLGE_OPC_GBL_RST_STATUS ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_set_vf_rst(struct hclge_dev *hdev, int func_id, bool reset)
{
 struct hclge_vf_rst_cmd *req;
 struct hclge_desc desc;

 req = (struct hclge_vf_rst_cmd *)desc.data;
 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_GBL_RST_STATUS, 0);
 req->dest_vfid = func_id;

 if (reset)
  req->vf_rst = 0x1;

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
