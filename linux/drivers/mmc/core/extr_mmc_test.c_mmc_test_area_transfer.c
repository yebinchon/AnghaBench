
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_area {int blocks; int sg_len; int sg; } ;
struct mmc_test_card {struct mmc_test_area area; } ;


 int mmc_test_simple_transfer (struct mmc_test_card*,int ,int ,unsigned int,int ,int,int) ;

__attribute__((used)) static int mmc_test_area_transfer(struct mmc_test_card *test,
      unsigned int dev_addr, int write)
{
 struct mmc_test_area *t = &test->area;

 return mmc_test_simple_transfer(test, t->sg, t->sg_len, dev_addr,
     t->blocks, 512, write);
}
