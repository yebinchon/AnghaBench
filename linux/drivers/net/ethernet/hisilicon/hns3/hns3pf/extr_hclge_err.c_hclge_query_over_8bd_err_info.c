
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hclge_query_ppu_pf_other_int_dfx_cmd {int over_8bd_no_fe_qid; int over_8bd_no_fe_vf_id; } ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;


 int HCLGE_OPC_PPU_PF_OTHER_INT_DFX ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int hclge_query_over_8bd_err_info(struct hclge_dev *hdev, u16 *vf_id,
      u16 *q_id)
{
 struct hclge_query_ppu_pf_other_int_dfx_cmd *req;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_PPU_PF_OTHER_INT_DFX, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  return ret;

 req = (struct hclge_query_ppu_pf_other_int_dfx_cmd *)desc.data;
 *vf_id = le16_to_cpu(req->over_8bd_no_fe_vf_id);
 *q_id = le16_to_cpu(req->over_8bd_no_fe_qid);

 return 0;
}
