
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct fm10k_hw {int dummy; } ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 int fm10k_update_xc_addr_pf (struct fm10k_hw*,int ,int const*,int ,int,int ) ;
 int is_multicast_ether_addr (int const*) ;

__attribute__((used)) static s32 fm10k_update_mc_addr_pf(struct fm10k_hw *hw, u16 glort,
       const u8 *mac, u16 vid, bool add)
{

 if (!is_multicast_ether_addr(mac))
  return FM10K_ERR_PARAM;

 return fm10k_update_xc_addr_pf(hw, glort, mac, vid, add, 0);
}
