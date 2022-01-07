
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdio_func {unsigned char max_blksize; unsigned char enable_timeout; TYPE_2__* card; } ;
struct mmc_card {int host; } ;
struct TYPE_3__ {unsigned int sdio_vsn; } ;
struct TYPE_4__ {TYPE_1__ cccr; } ;


 int EINVAL ;
 int HZ ;
 unsigned int SDIO_SDIO_REV_1_00 ;
 unsigned int SDIO_SDIO_REV_1_10 ;
 unsigned char jiffies_to_msecs (int ) ;
 int mmc_hostname (int ) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int cistpl_funce_func(struct mmc_card *card, struct sdio_func *func,
        const unsigned char *buf, unsigned size)
{
 unsigned vsn;
 unsigned min_size;


 if (!func)
  return -EINVAL;





 vsn = func->card->cccr.sdio_vsn;
 min_size = (vsn == SDIO_SDIO_REV_1_00) ? 28 : 42;

 if (size == 28 && vsn == SDIO_SDIO_REV_1_10) {
  pr_warn("%s: card has broken SDIO 1.1 CIS, forcing SDIO 1.0\n",
   mmc_hostname(card->host));
  vsn = SDIO_SDIO_REV_1_00;
 } else if (size < min_size) {
  return -EINVAL;
 }


 func->max_blksize = buf[12] | (buf[13] << 8);


 if (vsn > SDIO_SDIO_REV_1_00)
  func->enable_timeout = (buf[28] | (buf[29] << 8)) * 10;
 else
  func->enable_timeout = jiffies_to_msecs(HZ);

 return 0;
}
