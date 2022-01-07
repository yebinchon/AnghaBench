
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct brcms_hardware {int boardrev; int sih; } ;


 scalar_t__ PCI_VENDOR_ID_BROADCOM ;
 scalar_t__ ai_get_boardvendor (int ) ;

__attribute__((used)) static bool brcms_c_validboardtype(struct brcms_hardware *wlc_hw)
{
 uint boardrev = wlc_hw->boardrev;


 uint brt = (boardrev & 0xf000) >> 12;
 uint b0 = (boardrev & 0xf00) >> 8;
 uint b1 = (boardrev & 0xf0) >> 4;
 uint b2 = boardrev & 0xf;


 if (ai_get_boardvendor(wlc_hw->sih) != PCI_VENDOR_ID_BROADCOM)
  return 1;


 if (boardrev == 0)
  return 0;

 if (boardrev <= 0xff)
  return 1;

 if ((brt > 2) || (brt == 0) || (b0 > 9) || (b0 == 0) || (b1 > 9)
  || (b2 > 9))
  return 0;

 return 1;
}
