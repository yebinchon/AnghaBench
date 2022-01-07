
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_FW_SM_RAM ;
 scalar_t__ IS_CHIP_FEATURE (int ) ;
 int REVISION_B1 ;
 int aq_hw_write_reg (struct aq_hw_s*,int,int) ;
 int hw_atl_mcp_up_force_intr_set (struct aq_hw_s*,int) ;
 int hw_atl_reg_glb_cpu_sem_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_scrpad12_get ;
 int hw_atl_sem_ram_get ;
 int hw_atl_utils_mif_cmd_get ;
 int readx_poll_timeout_atomic (int ,struct aq_hw_s*,unsigned int,int,unsigned int,unsigned int) ;

__attribute__((used)) static int hw_atl_utils_fw_upload_dwords(struct aq_hw_s *self, u32 a, u32 *p,
      u32 cnt)
{
 u32 val;
 int err = 0;

 err = readx_poll_timeout_atomic(hw_atl_sem_ram_get, self,
     val, val == 1U,
     10U, 100000U);
 if (err < 0)
  goto err_exit;

 if (IS_CHIP_FEATURE(REVISION_B1)) {
  u32 offset = 0;

  for (; offset < cnt; ++offset) {
   aq_hw_write_reg(self, 0x328, p[offset]);
   aq_hw_write_reg(self, 0x32C,
     (0x80000000 | (0xFFFF & (offset * 4))));
   hw_atl_mcp_up_force_intr_set(self, 1);

   err = readx_poll_timeout_atomic(hw_atl_scrpad12_get,
       self, val,
       (val & 0xF0000000) !=
       0x80000000,
       10U, 10000U);
  }
 } else {
  u32 offset = 0;

  aq_hw_write_reg(self, 0x208, a);

  for (; offset < cnt; ++offset) {
   aq_hw_write_reg(self, 0x20C, p[offset]);
   aq_hw_write_reg(self, 0x200, 0xC000);

   err = readx_poll_timeout_atomic(hw_atl_utils_mif_cmd_get,
       self, val,
       (val & 0x100) == 0,
       1000U, 10000U);
  }
 }

 hw_atl_reg_glb_cpu_sem_set(self, 1U, HW_ATL_FW_SM_RAM);

err_exit:
 return err;
}
