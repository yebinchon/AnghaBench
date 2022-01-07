
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_shim_info {int wlc; } ;


 int brcms_c_suspend_mac_and_wait (int ) ;

void wlapi_suspend_mac_and_wait(struct phy_shim_info *physhim)
{
 brcms_c_suspend_mac_and_wait(physhim->wlc);
}
