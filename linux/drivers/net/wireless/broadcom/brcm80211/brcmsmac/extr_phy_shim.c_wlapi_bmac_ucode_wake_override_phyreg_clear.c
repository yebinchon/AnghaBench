
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_shim_info {int wlc_hw; } ;


 int BRCMS_WAKE_OVERRIDE_PHYREG ;
 int brcms_c_ucode_wake_override_clear (int ,int ) ;

void wlapi_bmac_ucode_wake_override_phyreg_clear(struct phy_shim_info *physhim)
{
 brcms_c_ucode_wake_override_clear(physhim->wlc_hw,
       BRCMS_WAKE_OVERRIDE_PHYREG);
}
