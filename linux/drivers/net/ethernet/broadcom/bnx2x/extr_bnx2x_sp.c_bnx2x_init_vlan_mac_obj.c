
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bnx2x_qable_obj {int dummy; } bnx2x_qable_obj ;
typedef int u8 ;
typedef int u32 ;
struct bnx2x_vlan_mac_obj {int exe_queue; int ramrod_cmd; int check_move; void* check_add; void* check_del; int set_one_rule; int put_cam_offset; int get_cam_offset; int put_credit; int get_credit; } ;
struct bnx2x_credit_pool_obj {int dummy; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;
typedef int bnx2x_obj_type ;


 int BNX2X_ERR (char*) ;
 int BUG () ;
 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1H (struct bnx2x*) ;
 int CLASSIFY_RULES_COUNT ;
 int RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES ;
 int RAMROD_CMD_ID_ETH_SET_MAC ;
 int bnx2x_check_move ;
 int bnx2x_check_move_always_err ;
 void* bnx2x_check_vlan_mac_add ;
 void* bnx2x_check_vlan_mac_del ;
 int bnx2x_exe_queue_init (struct bnx2x*,int *,int,union bnx2x_qable_obj*,int ,int ,int ,int ,int ) ;
 int bnx2x_execute_vlan_mac ;
 int bnx2x_exeq_get_vlan_mac ;
 int bnx2x_get_cam_offset_mac ;
 int bnx2x_get_credit_vlan_mac ;
 int bnx2x_init_vlan_mac_common (struct bnx2x_vlan_mac_obj*,int ,int ,int ,void*,int ,int,unsigned long*,int ,struct bnx2x_credit_pool_obj*,struct bnx2x_credit_pool_obj*) ;
 int bnx2x_optimize_vlan_mac ;
 int bnx2x_put_cam_offset_mac ;
 int bnx2x_put_credit_vlan_mac ;
 int bnx2x_remove_vlan_mac ;
 int bnx2x_set_one_vlan_mac_e1h ;
 int bnx2x_set_one_vlan_mac_e2 ;
 int bnx2x_validate_vlan_mac ;

void bnx2x_init_vlan_mac_obj(struct bnx2x *bp,
        struct bnx2x_vlan_mac_obj *vlan_mac_obj,
        u8 cl_id, u32 cid, u8 func_id, void *rdata,
        dma_addr_t rdata_mapping, int state,
        unsigned long *pstate, bnx2x_obj_type type,
        struct bnx2x_credit_pool_obj *macs_pool,
        struct bnx2x_credit_pool_obj *vlans_pool)
{
 union bnx2x_qable_obj *qable_obj =
  (union bnx2x_qable_obj *)vlan_mac_obj;

 bnx2x_init_vlan_mac_common(vlan_mac_obj, cl_id, cid, func_id, rdata,
       rdata_mapping, state, pstate, type,
       macs_pool, vlans_pool);


 vlan_mac_obj->get_credit = bnx2x_get_credit_vlan_mac;
 vlan_mac_obj->put_credit = bnx2x_put_credit_vlan_mac;




 vlan_mac_obj->get_cam_offset = bnx2x_get_cam_offset_mac;
 vlan_mac_obj->put_cam_offset = bnx2x_put_cam_offset_mac;

 if (CHIP_IS_E1(bp)) {
  BNX2X_ERR("Do not support chips others than E2\n");
  BUG();
 } else if (CHIP_IS_E1H(bp)) {
  vlan_mac_obj->set_one_rule = bnx2x_set_one_vlan_mac_e1h;
  vlan_mac_obj->check_del = bnx2x_check_vlan_mac_del;
  vlan_mac_obj->check_add = bnx2x_check_vlan_mac_add;
  vlan_mac_obj->check_move = bnx2x_check_move_always_err;
  vlan_mac_obj->ramrod_cmd = RAMROD_CMD_ID_ETH_SET_MAC;


  bnx2x_exe_queue_init(bp,
         &vlan_mac_obj->exe_queue, 1, qable_obj,
         bnx2x_validate_vlan_mac,
         bnx2x_remove_vlan_mac,
         bnx2x_optimize_vlan_mac,
         bnx2x_execute_vlan_mac,
         bnx2x_exeq_get_vlan_mac);
 } else {
  vlan_mac_obj->set_one_rule = bnx2x_set_one_vlan_mac_e2;
  vlan_mac_obj->check_del = bnx2x_check_vlan_mac_del;
  vlan_mac_obj->check_add = bnx2x_check_vlan_mac_add;
  vlan_mac_obj->check_move = bnx2x_check_move;
  vlan_mac_obj->ramrod_cmd =
   RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES;


  bnx2x_exe_queue_init(bp,
         &vlan_mac_obj->exe_queue,
         CLASSIFY_RULES_COUNT,
         qable_obj, bnx2x_validate_vlan_mac,
         bnx2x_remove_vlan_mac,
         bnx2x_optimize_vlan_mac,
         bnx2x_execute_vlan_mac,
         bnx2x_exeq_get_vlan_mac);
 }
}
