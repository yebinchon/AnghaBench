
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int cas_flags; scalar_t__ regs; } ;


 int CAS_FLAG_REG_PLUS ;
 int INTRN_MASK_CLEAR_ALL ;
 int INTRN_MASK_RX_EN ;
 scalar_t__ REG_INTR_MASK ;
 scalar_t__ REG_PLUS_INTRN_MASK (int const) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cas_disable_irq(struct cas *cp, const int ring)
{

 if (ring == 0) {
  writel(0xFFFFFFFF, cp->regs + REG_INTR_MASK);
  return;
 }


 if (cp->cas_flags & CAS_FLAG_REG_PLUS) {
  switch (ring) {
  default:
   writel(INTRN_MASK_CLEAR_ALL, cp->regs +
          REG_PLUS_INTRN_MASK(ring));
   break;
  }
 }
}
