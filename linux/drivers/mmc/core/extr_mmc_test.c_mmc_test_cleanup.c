
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_card {int buffer; } ;


 int BUFFER_SIZE ;
 int memset (int ,int ,int) ;
 int mmc_test_buffer_transfer (struct mmc_test_card*,int ,int,int,int) ;
 int mmc_test_set_blksize (struct mmc_test_card*,int) ;

__attribute__((used)) static int mmc_test_cleanup(struct mmc_test_card *test)
{
 int ret, i;

 ret = mmc_test_set_blksize(test, 512);
 if (ret)
  return ret;

 memset(test->buffer, 0, 512);

 for (i = 0; i < BUFFER_SIZE / 512; i++) {
  ret = mmc_test_buffer_transfer(test, test->buffer, i, 512, 1);
  if (ret)
   return ret;
 }

 return 0;
}
