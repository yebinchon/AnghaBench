
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct mmc_test_transfer_result {unsigned int count; unsigned int sectors; unsigned int rate; unsigned int iops; int link; struct timespec64 ts; } ;
struct mmc_test_card {TYPE_1__* gr; } ;
struct TYPE_2__ {int tr_lst; } ;


 int GFP_KERNEL ;
 struct mmc_test_transfer_result* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void mmc_test_save_transfer_result(struct mmc_test_card *test,
 unsigned int count, unsigned int sectors, struct timespec64 ts,
 unsigned int rate, unsigned int iops)
{
 struct mmc_test_transfer_result *tr;

 if (!test->gr)
  return;

 tr = kmalloc(sizeof(*tr), GFP_KERNEL);
 if (!tr)
  return;

 tr->count = count;
 tr->sectors = sectors;
 tr->ts = ts;
 tr->rate = rate;
 tr->iops = iops;

 list_add_tail(&tr->link, &test->gr->tr_lst);
}
