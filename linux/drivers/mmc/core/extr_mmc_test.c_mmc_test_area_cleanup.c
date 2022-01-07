
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_area {int mem; int sg; } ;
struct mmc_test_card {struct mmc_test_area area; } ;


 int kfree (int ) ;
 int mmc_test_free_mem (int ) ;

__attribute__((used)) static int mmc_test_area_cleanup(struct mmc_test_card *test)
{
 struct mmc_test_area *t = &test->area;

 kfree(t->sg);
 mmc_test_free_mem(t->mem);

 return 0;
}
