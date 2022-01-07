
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_card_info {scalar_t__ family; scalar_t__ pci_conf; int device; } ;


 scalar_t__ DMAMODE0 ;
 scalar_t__ DMAMODE1 ;
 scalar_t__ DMATHR ;
 scalar_t__ FST_FAMILY_TXU ;
 int outl (int,scalar_t__) ;
 int pci_set_master (int ) ;

__attribute__((used)) static inline void
fst_init_dma(struct fst_card_info *card)
{



 if (card->family == FST_FAMILY_TXU) {
         pci_set_master(card->device);
  outl(0x00020441, card->pci_conf + DMAMODE0);
  outl(0x00020441, card->pci_conf + DMAMODE1);
  outl(0x0, card->pci_conf + DMATHR);
 }
}
