
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_card {int dummy; } ;


 int mmc_test_broken_transfer (struct mmc_test_card*,int,int,int ) ;
 int mmc_test_set_blksize (struct mmc_test_card*,int) ;

__attribute__((used)) static int mmc_test_xfersize_read(struct mmc_test_card *test)
{
 int ret;

 ret = mmc_test_set_blksize(test, 512);
 if (ret)
  return ret;

 return mmc_test_broken_transfer(test, 1, 512, 0);
}
