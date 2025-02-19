
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct aq_rss_parameters {int * hash_secret_key; } ;
struct aq_nic_cfg_s {scalar_t__ is_rss; } ;
struct aq_hw_s {struct aq_nic_cfg_s* aq_nic_cfg; } ;


 unsigned int __swab32 (int ) ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_rpf_rss_key_addr_set (struct aq_hw_s*,unsigned int) ;
 int hw_atl_rpf_rss_key_wr_data_set (struct aq_hw_s*,scalar_t__) ;
 int hw_atl_rpf_rss_key_wr_en_get ;
 int hw_atl_rpf_rss_key_wr_en_set (struct aq_hw_s*,unsigned int) ;
 int readx_poll_timeout_atomic (int ,struct aq_hw_s*,scalar_t__,int,unsigned int,unsigned int) ;

__attribute__((used)) static int hw_atl_a0_hw_rss_hash_set(struct aq_hw_s *self,
         struct aq_rss_parameters *rss_params)
{
 struct aq_nic_cfg_s *cfg = self->aq_nic_cfg;
 int err = 0;
 unsigned int i = 0U;
 unsigned int addr = 0U;
 u32 val;

 for (i = 10, addr = 0U; i--; ++addr) {
  u32 key_data = cfg->is_rss ?
   __swab32(rss_params->hash_secret_key[i]) : 0U;
  hw_atl_rpf_rss_key_wr_data_set(self, key_data);
  hw_atl_rpf_rss_key_addr_set(self, addr);
  hw_atl_rpf_rss_key_wr_en_set(self, 1U);
  err = readx_poll_timeout_atomic(hw_atl_rpf_rss_key_wr_en_get,
      self, val, val == 0,
      1000U, 10000U);
  if (err < 0)
   goto err_exit;
 }

 err = aq_hw_err_from_flags(self);

err_exit:
 return err;
}
