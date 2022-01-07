
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_shim_info {int wl; } ;


 int brcms_intrsoff (int ) ;

u32 wlapi_intrsoff(struct phy_shim_info *physhim)
{
 return brcms_intrsoff(physhim->wl);
}
