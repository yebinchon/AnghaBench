
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aq_hw_s {int dummy; } ;


 int EINVAL ;
 int HW_ATL_A0_MAC ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_rpfl2_uc_flr_en_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_rpfl2unicast_dest_addresslsw_set (struct aq_hw_s*,unsigned int,int ) ;
 int hw_atl_rpfl2unicast_dest_addressmsw_set (struct aq_hw_s*,unsigned int,int ) ;

__attribute__((used)) static int hw_atl_a0_hw_mac_addr_set(struct aq_hw_s *self, u8 *mac_addr)
{
 int err = 0;
 unsigned int h = 0U;
 unsigned int l = 0U;

 if (!mac_addr) {
  err = -EINVAL;
  goto err_exit;
 }
 h = (mac_addr[0] << 8) | (mac_addr[1]);
 l = (mac_addr[2] << 24) | (mac_addr[3] << 16) |
     (mac_addr[4] << 8) | mac_addr[5];

 hw_atl_rpfl2_uc_flr_en_set(self, 0U, HW_ATL_A0_MAC);
 hw_atl_rpfl2unicast_dest_addresslsw_set(self, l, HW_ATL_A0_MAC);
 hw_atl_rpfl2unicast_dest_addressmsw_set(self, h, HW_ATL_A0_MAC);
 hw_atl_rpfl2_uc_flr_en_set(self, 1U, HW_ATL_A0_MAC);

 err = aq_hw_err_from_flags(self);

err_exit:
 return err;
}
