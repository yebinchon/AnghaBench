
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int flags; unsigned int const card_exist; } ;


 int EIO ;

 int PCR_MS_PMOS ;




int rtsx_pci_card_exclusive_check(struct rtsx_pcr *pcr, int card)
{
 static const unsigned int cd_mask[] = {
  [129] = 128,
  [130] = 131
 };

 if (!(pcr->flags & PCR_MS_PMOS)) {



  if (pcr->card_exist & (~cd_mask[card]))
   return -EIO;
 }

 return 0;
}
