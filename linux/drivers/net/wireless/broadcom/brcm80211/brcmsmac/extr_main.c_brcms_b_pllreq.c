
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_hardware {scalar_t__ sbclk; int pllreq; } ;


 int BRCMS_PLLREQ_FLIP ;
 int OFF ;
 int ON ;
 int brcms_b_xtal (struct brcms_hardware*,int ) ;
 int mboolclr (int ,int ) ;
 scalar_t__ mboolisset (int ,int ) ;
 int mboolset (int ,int ) ;

__attribute__((used)) static void brcms_b_pllreq(struct brcms_hardware *wlc_hw, bool set, u32 req_bit)
{
 if (set) {
  if (mboolisset(wlc_hw->pllreq, req_bit))
   return;

  mboolset(wlc_hw->pllreq, req_bit);

  if (mboolisset(wlc_hw->pllreq, BRCMS_PLLREQ_FLIP)) {
   if (!wlc_hw->sbclk)
    brcms_b_xtal(wlc_hw, ON);
  }
 } else {
  if (!mboolisset(wlc_hw->pllreq, req_bit))
   return;

  mboolclr(wlc_hw->pllreq, req_bit);

  if (mboolisset(wlc_hw->pllreq, BRCMS_PLLREQ_FLIP)) {
   if (wlc_hw->sbclk)
    brcms_b_xtal(wlc_hw, OFF);
  }
 }
}
