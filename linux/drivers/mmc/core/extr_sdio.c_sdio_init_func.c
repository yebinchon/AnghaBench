
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdio_func {unsigned int num; TYPE_2__* card; int max_blksize; int device; int vendor; } ;
struct mmc_card {int quirks; struct sdio_func** sdio_func; } ;
struct TYPE_3__ {int blksize; int device; int vendor; } ;
struct TYPE_4__ {TYPE_1__ cis; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct sdio_func*) ;
 int MMC_QUIRK_NONSTD_SDIO ;
 int PTR_ERR (struct sdio_func*) ;
 unsigned int SDIO_MAX_FUNCS ;
 scalar_t__ WARN_ON (int) ;
 struct sdio_func* sdio_alloc_func (struct mmc_card*) ;
 int sdio_read_fbr (struct sdio_func*) ;
 int sdio_read_func_cis (struct sdio_func*) ;
 int sdio_remove_func (struct sdio_func*) ;

__attribute__((used)) static int sdio_init_func(struct mmc_card *card, unsigned int fn)
{
 int ret;
 struct sdio_func *func;

 if (WARN_ON(fn > SDIO_MAX_FUNCS))
  return -EINVAL;

 func = sdio_alloc_func(card);
 if (IS_ERR(func))
  return PTR_ERR(func);

 func->num = fn;

 if (!(card->quirks & MMC_QUIRK_NONSTD_SDIO)) {
  ret = sdio_read_fbr(func);
  if (ret)
   goto fail;

  ret = sdio_read_func_cis(func);
  if (ret)
   goto fail;
 } else {
  func->vendor = func->card->cis.vendor;
  func->device = func->card->cis.device;
  func->max_blksize = func->card->cis.blksize;
 }

 card->sdio_func[fn - 1] = func;

 return 0;

fail:




 sdio_remove_func(func);
 return ret;
}
