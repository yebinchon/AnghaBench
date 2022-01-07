
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_area {int dev_addr; int max_tfr; } ;
struct mmc_test_card {struct mmc_test_area area; } ;


 int mmc_test_area_io (struct mmc_test_card*,int ,int ,int,int,int) ;

__attribute__((used)) static int mmc_test_best_performance(struct mmc_test_card *test, int write,
         int max_scatter)
{
 struct mmc_test_area *t = &test->area;

 return mmc_test_area_io(test, t->max_tfr, t->dev_addr, write,
    max_scatter, 1);
}
