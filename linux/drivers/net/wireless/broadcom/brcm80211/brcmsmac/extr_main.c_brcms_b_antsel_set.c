
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_hardware {int antsel_avail; } ;



__attribute__((used)) static void brcms_b_antsel_set(struct brcms_hardware *wlc_hw, u32 antsel_avail)
{
 wlc_hw->antsel_avail = antsel_avail;
}
