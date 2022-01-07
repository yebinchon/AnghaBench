
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hclge_vport {int vport_id; int bw_limit; struct hclge_dev* back; } ;
struct hclge_dev {int dummy; } ;


 int HCLGE_SHAPER_BS_S_DEF ;
 int HCLGE_SHAPER_BS_U_DEF ;
 int HCLGE_SHAPER_LVL_VF ;
 int HCLGE_TM_SHAP_C_BUCKET ;
 int HCLGE_TM_SHAP_P_BUCKET ;
 int hclge_shaper_para_calc (int ,int ,int *,int *,int *) ;
 int hclge_tm_get_shapping_para (int ,int ,int ,int ,int ) ;
 int hclge_tm_pri_shapping_cfg (struct hclge_dev*,int ,int ,int ) ;

__attribute__((used)) static int hclge_tm_pri_vnet_base_shaper_pri_cfg(struct hclge_vport *vport)
{
 struct hclge_dev *hdev = vport->back;
 u8 ir_u, ir_b, ir_s;
 u32 shaper_para;
 int ret;

 ret = hclge_shaper_para_calc(vport->bw_limit, HCLGE_SHAPER_LVL_VF,
         &ir_b, &ir_u, &ir_s);
 if (ret)
  return ret;

 shaper_para = hclge_tm_get_shapping_para(0, 0, 0,
       HCLGE_SHAPER_BS_U_DEF,
       HCLGE_SHAPER_BS_S_DEF);
 ret = hclge_tm_pri_shapping_cfg(hdev, HCLGE_TM_SHAP_C_BUCKET,
     vport->vport_id, shaper_para);
 if (ret)
  return ret;

 shaper_para = hclge_tm_get_shapping_para(ir_b, ir_u, ir_s,
       HCLGE_SHAPER_BS_U_DEF,
       HCLGE_SHAPER_BS_S_DEF);
 ret = hclge_tm_pri_shapping_cfg(hdev, HCLGE_TM_SHAP_P_BUCKET,
     vport->vport_id, shaper_para);
 if (ret)
  return ret;

 return 0;
}
