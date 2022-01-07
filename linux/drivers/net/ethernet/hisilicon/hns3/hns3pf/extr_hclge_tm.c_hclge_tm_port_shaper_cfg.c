
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hclge_port_shapping_cmd {int port_shapping_para; } ;
struct TYPE_3__ {int speed; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;
struct hclge_desc {scalar_t__ data; } ;


 int HCLGE_OPC_TM_PORT_SHAPPING ;
 int HCLGE_SHAPER_BS_S_DEF ;
 int HCLGE_SHAPER_BS_U_DEF ;
 int HCLGE_SHAPER_LVL_PORT ;
 int cpu_to_le32 (int ) ;
 int hclge_cmd_send (TYPE_2__*,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_shaper_para_calc (int ,int ,int *,int *,int *) ;
 int hclge_tm_get_shapping_para (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int hclge_tm_port_shaper_cfg(struct hclge_dev *hdev)
{
 struct hclge_port_shapping_cmd *shap_cfg_cmd;
 struct hclge_desc desc;
 u8 ir_u, ir_b, ir_s;
 u32 shapping_para;
 int ret;

 ret = hclge_shaper_para_calc(hdev->hw.mac.speed,
         HCLGE_SHAPER_LVL_PORT,
         &ir_b, &ir_u, &ir_s);
 if (ret)
  return ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_TM_PORT_SHAPPING, 0);
 shap_cfg_cmd = (struct hclge_port_shapping_cmd *)desc.data;

 shapping_para = hclge_tm_get_shapping_para(ir_b, ir_u, ir_s,
         HCLGE_SHAPER_BS_U_DEF,
         HCLGE_SHAPER_BS_S_DEF);

 shap_cfg_cmd->port_shapping_para = cpu_to_le32(shapping_para);

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
