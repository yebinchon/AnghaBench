
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_write_shm (int ,int ,int ) ;

void wlapi_bmac_write_shm(struct phy_shim_info *physhim, uint offset, u16 v)
{
 brcms_b_write_shm(physhim->wlc_hw, offset, v);
}
