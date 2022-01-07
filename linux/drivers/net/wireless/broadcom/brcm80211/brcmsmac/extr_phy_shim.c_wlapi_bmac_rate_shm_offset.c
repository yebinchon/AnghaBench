
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_rate_shm_offset (int ,int ) ;

u16 wlapi_bmac_rate_shm_offset(struct phy_shim_info *physhim, u8 rate)
{
 return brcms_b_rate_shm_offset(physhim->wlc_hw, rate);
}
