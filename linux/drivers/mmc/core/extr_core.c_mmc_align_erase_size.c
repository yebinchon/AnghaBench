
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {unsigned int erase_size; } ;


 scalar_t__ is_power_of_2 (unsigned int) ;
 unsigned int round_down (unsigned int,unsigned int) ;
 unsigned int round_up (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int mmc_align_erase_size(struct mmc_card *card,
      unsigned int *from,
      unsigned int *to,
      unsigned int nr)
{
 unsigned int from_new = *from, nr_new = nr, rem;





 if (is_power_of_2(card->erase_size)) {
  unsigned int temp = from_new;

  from_new = round_up(temp, card->erase_size);
  rem = from_new - temp;

  if (nr_new > rem)
   nr_new -= rem;
  else
   return 0;

  nr_new = round_down(nr_new, card->erase_size);
 } else {
  rem = from_new % card->erase_size;
  if (rem) {
   rem = card->erase_size - rem;
   from_new += rem;
   if (nr_new > rem)
    nr_new -= rem;
   else
    return 0;
  }

  rem = nr_new % card->erase_size;
  if (rem)
   nr_new -= rem;
 }

 if (nr_new == 0)
  return 0;

 *to = from_new + nr_new;
 *from = from_new;

 return nr_new;
}
