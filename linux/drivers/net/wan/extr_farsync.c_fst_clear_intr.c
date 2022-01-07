
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_card_info {scalar_t__ family; scalar_t__ pci_conf; int ctlmem; } ;


 scalar_t__ FST_FAMILY_TXU ;
 scalar_t__ INTCSR_9052 ;
 int outw (int,scalar_t__) ;
 int readb (int ) ;

__attribute__((used)) static inline void
fst_clear_intr(struct fst_card_info *card)
{
 if (card->family == FST_FAMILY_TXU) {
  (void) readb(card->ctlmem);
 } else {


  outw(0x0543, card->pci_conf + INTCSR_9052);
 }
}
