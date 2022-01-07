
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_get_txant (int ) ;

u16 wlapi_bmac_get_txant(struct phy_shim_info *physhim)
{
 return brcms_b_get_txant(physhim->wlc_hw);
}
