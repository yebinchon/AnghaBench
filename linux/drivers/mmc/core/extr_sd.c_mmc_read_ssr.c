
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct TYPE_6__ {scalar_t__ sda_specx; scalar_t__ sda_spec3; } ;
struct TYPE_5__ {unsigned int erase_timeout; unsigned int erase_offset; int au; } ;
struct TYPE_4__ {int cmdclass; } ;
struct mmc_card {TYPE_3__ scr; int erase_arg; int * raw_ssr; int host; TYPE_2__ ssr; TYPE_1__ csd; } ;
typedef int __be32 ;


 int CCC_APP_SPEC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SD_DISCARD_ARG ;
 int SD_ERASE_ARG ;
 void* UNSTUFF_BITS (int *,int,int) ;
 int be32_to_cpu (int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 scalar_t__ mmc_app_sd_status (struct mmc_card*,int *) ;
 int mmc_hostname (int ) ;
 int pr_warn (char*,int ) ;
 int * sd_au_size ;

__attribute__((used)) static int mmc_read_ssr(struct mmc_card *card)
{
 unsigned int au, es, et, eo;
 __be32 *raw_ssr;
 u32 resp[4] = {};
 u8 discard_support;
 int i;

 if (!(card->csd.cmdclass & CCC_APP_SPEC)) {
  pr_warn("%s: card lacks mandatory SD Status function\n",
   mmc_hostname(card->host));
  return 0;
 }

 raw_ssr = kmalloc(sizeof(card->raw_ssr), GFP_KERNEL);
 if (!raw_ssr)
  return -ENOMEM;

 if (mmc_app_sd_status(card, raw_ssr)) {
  pr_warn("%s: problem reading SD Status register\n",
   mmc_hostname(card->host));
  kfree(raw_ssr);
  return 0;
 }

 for (i = 0; i < 16; i++)
  card->raw_ssr[i] = be32_to_cpu(raw_ssr[i]);

 kfree(raw_ssr);





 au = UNSTUFF_BITS(card->raw_ssr, 428 - 384, 4);
 if (au) {
  if (au <= 9 || card->scr.sda_spec3) {
   card->ssr.au = sd_au_size[au];
   es = UNSTUFF_BITS(card->raw_ssr, 408 - 384, 16);
   et = UNSTUFF_BITS(card->raw_ssr, 402 - 384, 6);
   if (es && et) {
    eo = UNSTUFF_BITS(card->raw_ssr, 400 - 384, 2);
    card->ssr.erase_timeout = (et * 1000) / es;
    card->ssr.erase_offset = eo * 1000;
   }
  } else {
   pr_warn("%s: SD Status: Invalid Allocation Unit size\n",
    mmc_hostname(card->host));
  }
 }




 resp[3] = card->raw_ssr[6];
 discard_support = UNSTUFF_BITS(resp, 313 - 288, 1);
 card->erase_arg = (card->scr.sda_specx && discard_support) ?
       SD_DISCARD_ARG : SD_ERASE_ARG;

 return 0;
}
