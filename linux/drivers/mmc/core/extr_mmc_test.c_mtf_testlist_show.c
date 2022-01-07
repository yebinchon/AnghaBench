
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* mmc_test_cases ;
 int mmc_test_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,int,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int mtf_testlist_show(struct seq_file *sf, void *data)
{
 int i;

 mutex_lock(&mmc_test_lock);

 seq_puts(sf, "0:\tRun all tests\n");
 for (i = 0; i < ARRAY_SIZE(mmc_test_cases); i++)
  seq_printf(sf, "%d:\t%s\n", i + 1, mmc_test_cases[i].name);

 mutex_unlock(&mmc_test_lock);

 return 0;
}
