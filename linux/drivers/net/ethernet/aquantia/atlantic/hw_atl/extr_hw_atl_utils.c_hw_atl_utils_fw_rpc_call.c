
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct aq_hw_s {int rpc_tid; int rpc; int rpc_addr; } ;
struct aq_hw_atl_utils_fw_rpc_tid_s {int tid; int val; scalar_t__ len; } ;


 int HW_ATL_RPC_CONTROL_ADR ;
 int IS_CHIP_FEATURE (int ) ;
 int MIPS ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;
 int hw_atl_utils_fw_upload_dwords (struct aq_hw_s*,int ,int *,unsigned int) ;

int hw_atl_utils_fw_rpc_call(struct aq_hw_s *self, unsigned int rpc_size)
{
 int err = 0;
 struct aq_hw_atl_utils_fw_rpc_tid_s sw;

 if (!IS_CHIP_FEATURE(MIPS)) {
  err = -1;
  goto err_exit;
 }
 err = hw_atl_utils_fw_upload_dwords(self, self->rpc_addr,
         (u32 *)(void *)&self->rpc,
         (rpc_size + sizeof(u32) -
          sizeof(u8)) / sizeof(u32));
 if (err < 0)
  goto err_exit;

 sw.tid = 0xFFFFU & (++self->rpc_tid);
 sw.len = (u16)rpc_size;
 aq_hw_write_reg(self, HW_ATL_RPC_CONTROL_ADR, sw.val);

err_exit:
 return err;
}
