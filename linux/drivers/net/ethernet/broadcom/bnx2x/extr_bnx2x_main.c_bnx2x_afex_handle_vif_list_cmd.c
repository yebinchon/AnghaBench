
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct bnx2x_func_afex_viflists_params {scalar_t__ func_to_clear; scalar_t__ func_bit_map; int vif_list_index; scalar_t__ afex_vif_list_command; } ;
struct TYPE_2__ {struct bnx2x_func_afex_viflists_params afex_viflists; } ;
struct bnx2x_func_state_params {int cmd; int * f_obj; TYPE_1__ params; int * member_0; } ;
struct bnx2x {int func_obj; } ;


 int BNX2X_ERR (char*,scalar_t__) ;
 int BNX2X_F_CMD_AFEX_VIFLISTS ;
 int DRV_MSG_CODE_AFEX_LISTGET_ACK ;
 int DRV_MSG_CODE_AFEX_LISTSET_ACK ;
 scalar_t__ VIF_LIST_RULE_GET ;
 scalar_t__ VIF_LIST_RULE_SET ;
 int bnx2x_func_state_change (struct bnx2x*,struct bnx2x_func_state_params*) ;
 int bnx2x_fw_command (struct bnx2x*,int ,int ) ;

__attribute__((used)) static int bnx2x_afex_handle_vif_list_cmd(struct bnx2x *bp, u8 cmd_type,
       u16 vif_index, u8 func_bit_map)
{
 struct bnx2x_func_state_params func_params = {((void*)0)};
 struct bnx2x_func_afex_viflists_params *update_params =
  &func_params.params.afex_viflists;
 int rc;
 u32 drv_msg_code;


 if ((cmd_type != VIF_LIST_RULE_GET) && (cmd_type != VIF_LIST_RULE_SET))
  BNX2X_ERR("BUG! afex_handle_vif_list_cmd invalid type 0x%x\n",
     cmd_type);

 func_params.f_obj = &bp->func_obj;
 func_params.cmd = BNX2X_F_CMD_AFEX_VIFLISTS;


 update_params->afex_vif_list_command = cmd_type;
 update_params->vif_list_index = vif_index;
 update_params->func_bit_map =
  (cmd_type == VIF_LIST_RULE_GET) ? 0 : func_bit_map;
 update_params->func_to_clear = 0;
 drv_msg_code =
  (cmd_type == VIF_LIST_RULE_GET) ?
  DRV_MSG_CODE_AFEX_LISTGET_ACK :
  DRV_MSG_CODE_AFEX_LISTSET_ACK;




 rc = bnx2x_func_state_change(bp, &func_params);
 if (rc < 0)
  bnx2x_fw_command(bp, drv_msg_code, 0);

 return 0;
}
