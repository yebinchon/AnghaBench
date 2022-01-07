
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct mmc_test_card {int buffer; TYPE_2__* card; } ;
struct TYPE_3__ {int write_partial; } ;
struct TYPE_4__ {TYPE_1__ csd; } ;


 int RESULT_UNSUP_CARD ;
 int mmc_test_transfer (struct mmc_test_card*,struct scatterlist*,int,int ,int,int,int) ;
 int sg_init_one (struct scatterlist*,int ,int) ;

__attribute__((used)) static int mmc_test_weird_write(struct mmc_test_card *test)
{
 int ret, i;
 struct scatterlist sg;

 if (!test->card->csd.write_partial)
  return RESULT_UNSUP_CARD;

 for (i = 3; i < 512; i += 7) {
  sg_init_one(&sg, test->buffer, i);
  ret = mmc_test_transfer(test, &sg, 1, 0, 1, i, 1);
  if (ret)
   return ret;
 }

 return 0;
}
