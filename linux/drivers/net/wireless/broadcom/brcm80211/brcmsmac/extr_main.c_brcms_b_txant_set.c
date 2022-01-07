
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_hardware {int up; int bmac_phytxant; } ;


 int brcms_c_ucode_txant_set (struct brcms_hardware*) ;

void brcms_b_txant_set(struct brcms_hardware *wlc_hw, u16 phytxant)
{

 wlc_hw->bmac_phytxant = phytxant;


 if (!wlc_hw->up)
  return;
 brcms_c_ucode_txant_set(wlc_hw);

}
