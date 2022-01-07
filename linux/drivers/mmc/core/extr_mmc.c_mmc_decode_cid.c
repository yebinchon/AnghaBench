
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int mmca_vsn; } ;
struct TYPE_3__ {int year; void* month; void* serial; void* prv; void** prod_name; void* oemid; void* manfid; void* fwrev; void* hwrev; } ;
struct mmc_card {TYPE_2__ csd; int host; TYPE_1__ cid; int * raw_cid; } ;


 int EINVAL ;
 void* UNSTUFF_BITS (int *,int,int) ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static int mmc_decode_cid(struct mmc_card *card)
{
 u32 *resp = card->raw_cid;





 switch (card->csd.mmca_vsn) {
 case 0:
 case 1:
  card->cid.manfid = UNSTUFF_BITS(resp, 104, 24);
  card->cid.prod_name[0] = UNSTUFF_BITS(resp, 96, 8);
  card->cid.prod_name[1] = UNSTUFF_BITS(resp, 88, 8);
  card->cid.prod_name[2] = UNSTUFF_BITS(resp, 80, 8);
  card->cid.prod_name[3] = UNSTUFF_BITS(resp, 72, 8);
  card->cid.prod_name[4] = UNSTUFF_BITS(resp, 64, 8);
  card->cid.prod_name[5] = UNSTUFF_BITS(resp, 56, 8);
  card->cid.prod_name[6] = UNSTUFF_BITS(resp, 48, 8);
  card->cid.hwrev = UNSTUFF_BITS(resp, 44, 4);
  card->cid.fwrev = UNSTUFF_BITS(resp, 40, 4);
  card->cid.serial = UNSTUFF_BITS(resp, 16, 24);
  card->cid.month = UNSTUFF_BITS(resp, 12, 4);
  card->cid.year = UNSTUFF_BITS(resp, 8, 4) + 1997;
  break;

 case 2:
 case 3:
 case 4:
  card->cid.manfid = UNSTUFF_BITS(resp, 120, 8);
  card->cid.oemid = UNSTUFF_BITS(resp, 104, 16);
  card->cid.prod_name[0] = UNSTUFF_BITS(resp, 96, 8);
  card->cid.prod_name[1] = UNSTUFF_BITS(resp, 88, 8);
  card->cid.prod_name[2] = UNSTUFF_BITS(resp, 80, 8);
  card->cid.prod_name[3] = UNSTUFF_BITS(resp, 72, 8);
  card->cid.prod_name[4] = UNSTUFF_BITS(resp, 64, 8);
  card->cid.prod_name[5] = UNSTUFF_BITS(resp, 56, 8);
  card->cid.prv = UNSTUFF_BITS(resp, 48, 8);
  card->cid.serial = UNSTUFF_BITS(resp, 16, 32);
  card->cid.month = UNSTUFF_BITS(resp, 12, 4);
  card->cid.year = UNSTUFF_BITS(resp, 8, 4) + 1997;
  break;

 default:
  pr_err("%s: card has unknown MMCA version %d\n",
   mmc_hostname(card->host), card->csd.mmca_vsn);
  return -EINVAL;
 }

 return 0;
}
