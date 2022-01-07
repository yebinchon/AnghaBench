
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_card {int dummy; } ;


 int __mmc_test_prepare (struct mmc_test_card*,int) ;

__attribute__((used)) static int mmc_test_prepare_write(struct mmc_test_card *test)
{
 return __mmc_test_prepare(test, 1);
}
