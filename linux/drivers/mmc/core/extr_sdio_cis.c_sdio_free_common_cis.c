
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func_tuple {struct sdio_func_tuple* next; } ;
struct mmc_card {struct sdio_func_tuple* tuples; } ;


 int kfree (struct sdio_func_tuple*) ;

void sdio_free_common_cis(struct mmc_card *card)
{
 struct sdio_func_tuple *tuple, *victim;

 tuple = card->tuples;

 while (tuple) {
  victim = tuple;
  tuple = tuple->next;
  kfree(victim);
 }

 card->tuples = ((void*)0);
}
