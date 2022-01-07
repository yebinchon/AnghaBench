
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;


 int _mmc_blk_suspend (struct mmc_card*) ;

__attribute__((used)) static void mmc_blk_shutdown(struct mmc_card *card)
{
 _mmc_blk_suspend(card);
}
