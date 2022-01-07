
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_card {int dummy; } ;


 int mmc_test_cmds_during_tfr (struct mmc_test_card*,int,int,int ) ;

__attribute__((used)) static int mmc_test_cmds_during_write_cmd23(struct mmc_test_card *test)
{
 return mmc_test_cmds_during_tfr(test, 1, 1, 0);
}
