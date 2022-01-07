
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_hw_s {unsigned int mbox_addr; } ;
struct aq_hw_caps_s {int dummy; } ;


 int HW_ATL_UCP_0X370_REG ;
 int aq_hw_read_reg (struct aq_hw_s*,int) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,unsigned int) ;
 int get_random_bytes (unsigned int*,int) ;
 int hw_atl_reg_glb_cpu_scratch_scp_set (struct aq_hw_s*,int,unsigned int) ;
 int hw_atl_scrpad25_get ;
 int readx_poll_timeout_atomic (int ,struct aq_hw_s*,unsigned int,int,unsigned int,unsigned int) ;

__attribute__((used)) static int hw_atl_utils_init_ucp(struct aq_hw_s *self,
     const struct aq_hw_caps_s *aq_hw_caps)
{
 int err = 0;

 if (!aq_hw_read_reg(self, 0x370U)) {
  unsigned int rnd = 0U;
  unsigned int ucp_0x370 = 0U;

  get_random_bytes(&rnd, sizeof(unsigned int));

  ucp_0x370 = 0x02020202U | (0xFEFEFEFEU & rnd);
  aq_hw_write_reg(self, HW_ATL_UCP_0X370_REG, ucp_0x370);
 }

 hw_atl_reg_glb_cpu_scratch_scp_set(self, 0x00000000U, 25U);


 err = readx_poll_timeout_atomic(hw_atl_scrpad25_get,
     self, self->mbox_addr,
     self->mbox_addr != 0U,
     1000U, 10000U);

 return err;
}
