
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct aq_hw_s {int dummy; } ;


 int ETIME ;
 int HW_ATL_FW_SM_RAM ;
 int HW_ATL_MIF_ADDR ;
 int HW_ATL_MIF_CMD ;
 int HW_ATL_MIF_VAL ;
 scalar_t__ IS_CHIP_FEATURE (int ) ;
 int REVISION_B1 ;
 int aq_hw_read_reg (struct aq_hw_s*,int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int) ;
 int hw_atl_reg_glb_cpu_sem_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_sem_ram_get (struct aq_hw_s*) ;
 int hw_atl_utils_mif_addr_get (struct aq_hw_s*) ;
 int hw_atl_utils_mif_cmd_get (struct aq_hw_s*) ;
 int readx_poll_timeout_atomic (int (*) (struct aq_hw_s*),struct aq_hw_s*,unsigned int,int,unsigned int,unsigned int) ;

int hw_atl_utils_fw_downld_dwords(struct aq_hw_s *self, u32 a,
      u32 *p, u32 cnt)
{
 int err = 0;
 u32 val;

 err = readx_poll_timeout_atomic(hw_atl_sem_ram_get,
     self, val, val == 1U,
     1U, 10000U);

 if (err < 0) {
  bool is_locked;

  hw_atl_reg_glb_cpu_sem_set(self, 1U, HW_ATL_FW_SM_RAM);
  is_locked = hw_atl_sem_ram_get(self);
  if (!is_locked) {
   err = -ETIME;
   goto err_exit;
  }
 }

 aq_hw_write_reg(self, HW_ATL_MIF_ADDR, a);

 for (++cnt; --cnt && !err;) {
  aq_hw_write_reg(self, HW_ATL_MIF_CMD, 0x00008000U);

  if (IS_CHIP_FEATURE(REVISION_B1))
   err = readx_poll_timeout_atomic(hw_atl_utils_mif_addr_get,
       self, val, val != a,
       1U, 1000U);
  else
   err = readx_poll_timeout_atomic(hw_atl_utils_mif_cmd_get,
       self, val,
       !(val & 0x100),
       1U, 1000U);

  *(p++) = aq_hw_read_reg(self, HW_ATL_MIF_VAL);
  a += 4;
 }

 hw_atl_reg_glb_cpu_sem_set(self, 1U, HW_ATL_FW_SM_RAM);

err_exit:
 return err;
}
