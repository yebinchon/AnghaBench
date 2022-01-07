
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {unsigned int erase_size; } ;



int mmc_erase_group_aligned(struct mmc_card *card, unsigned int from,
       unsigned int nr)
{
 if (!card->erase_size)
  return 0;
 if (from % card->erase_size || nr % card->erase_size)
  return 0;
 return 1;
}
