
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ecc {int dev; int done; } ;
typedef enum mtk_ecc_operation { ____Placeholder_mtk_ecc_operation } mtk_ecc_operation ;


 int ECC_ENCODE ;
 int ETIMEDOUT ;
 int dev_err (int ,char*,char*) ;
 int msecs_to_jiffies (int) ;
 int wait_for_completion_timeout (int *,int ) ;

int mtk_ecc_wait_done(struct mtk_ecc *ecc, enum mtk_ecc_operation op)
{
 int ret;

 ret = wait_for_completion_timeout(&ecc->done, msecs_to_jiffies(500));
 if (!ret) {
  dev_err(ecc->dev, "%s timeout - interrupt did not arrive)\n",
   (op == ECC_ENCODE) ? "encoder" : "decoder");
  return -ETIMEDOUT;
 }

 return 0;
}
