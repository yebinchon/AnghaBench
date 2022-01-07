
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_card {int dummy; } ;


 int mmc_test_area_io_seq (struct mmc_test_card*,unsigned long,unsigned int,int,int,int,int,int,int ) ;

__attribute__((used)) static int mmc_test_area_io(struct mmc_test_card *test, unsigned long sz,
       unsigned int dev_addr, int write, int max_scatter,
       int timed)
{
 return mmc_test_area_io_seq(test, sz, dev_addr, write, max_scatter,
        timed, 1, 0, 0);
}
