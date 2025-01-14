
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hw_atl_utils_fw_rpc {int dummy; } ;
struct aq_hw_s {scalar_t__ rpc_tid; struct hw_atl_utils_fw_rpc rpc; int rpc_addr; } ;
struct aq_hw_atl_utils_fw_rpc_tid_s {scalar_t__ tid; int len; int val; } ;


 int HW_ATL_RPC_CONTROL_ADR ;
 int aq_hw_read_reg (struct aq_hw_s*,int ) ;
 int hw_atl_utils_fw_downld_dwords (struct aq_hw_s*,int ,int *,int) ;
 int hw_atl_utils_fw_rpc_call (struct aq_hw_s*,int) ;
 int hw_atl_utils_rpc_state_get ;
 int readx_poll_timeout_atomic (int ,struct aq_hw_s*,int ,int,unsigned int,unsigned int) ;

int hw_atl_utils_fw_rpc_wait(struct aq_hw_s *self,
        struct hw_atl_utils_fw_rpc **rpc)
{
 int err = 0;
 struct aq_hw_atl_utils_fw_rpc_tid_s sw;
 struct aq_hw_atl_utils_fw_rpc_tid_s fw;

 do {
  sw.val = aq_hw_read_reg(self, HW_ATL_RPC_CONTROL_ADR);

  self->rpc_tid = sw.tid;

  err = readx_poll_timeout_atomic(hw_atl_utils_rpc_state_get,
      self, fw.val,
      sw.tid == fw.tid,
      1000U, 100000U);

  if (fw.len == 0xFFFFU) {
   err = hw_atl_utils_fw_rpc_call(self, sw.len);
   if (err < 0)
    goto err_exit;
  }
 } while (sw.tid != fw.tid || 0xFFFFU == fw.len);

 if (rpc) {
  if (fw.len) {
   err =
   hw_atl_utils_fw_downld_dwords(self,
            self->rpc_addr,
            (u32 *)(void *)
            &self->rpc,
            (fw.len + sizeof(u32) -
             sizeof(u8)) /
            sizeof(u32));
   if (err < 0)
    goto err_exit;
  }

  *rpc = &self->rpc;
 }

err_exit:
 return err;
}
