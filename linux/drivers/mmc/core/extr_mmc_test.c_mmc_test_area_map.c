
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_test_area {unsigned long blocks; int sg_len; int max_seg_sz; int max_segs; int sg; int mem; } ;
struct mmc_test_card {TYPE_1__* card; struct mmc_test_area area; } ;
struct TYPE_2__ {int host; } ;


 int mmc_hostname (int ) ;
 int mmc_test_map_sg (int ,unsigned long,int ,int,int ,int ,int *,int) ;
 int mmc_test_map_sg_max_scatter (int ,unsigned long,int ,int ,int ,int *) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int mmc_test_area_map(struct mmc_test_card *test, unsigned long sz,
        int max_scatter, int min_sg_len)
{
 struct mmc_test_area *t = &test->area;
 int err;

 t->blocks = sz >> 9;

 if (max_scatter) {
  err = mmc_test_map_sg_max_scatter(t->mem, sz, t->sg,
        t->max_segs, t->max_seg_sz,
           &t->sg_len);
 } else {
  err = mmc_test_map_sg(t->mem, sz, t->sg, 1, t->max_segs,
          t->max_seg_sz, &t->sg_len, min_sg_len);
 }
 if (err)
  pr_info("%s: Failed to map sg list\n",
         mmc_hostname(test->card->host));
 return err;
}
