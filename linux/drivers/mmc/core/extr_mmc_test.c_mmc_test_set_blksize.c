
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_card {int card; } ;


 int mmc_set_blocklen (int ,unsigned int) ;

__attribute__((used)) static int mmc_test_set_blksize(struct mmc_test_card *test, unsigned size)
{
 return mmc_set_blocklen(test->card, size);
}
