
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct bt878 {int dev; } ;


 struct bt878* bt878 ;
 unsigned int bt878_num ;
 scalar_t__ is_pci_slot_eq (int ,struct pci_dev*) ;

__attribute__((used)) static struct bt878 *dvb_bt8xx_878_match(unsigned int bttv_nr,
      struct pci_dev* bttv_pci_dev)
{
 unsigned int card_nr;


 for (card_nr = 0; card_nr < bt878_num; card_nr++)
  if (is_pci_slot_eq(bt878[card_nr].dev, bttv_pci_dev))
   return &bt878[card_nr];
 return ((void*)0);
}
