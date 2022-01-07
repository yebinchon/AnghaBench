
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_csd {int structure; int mmca_vsn; int taac_ns; int taac_clks; int max_dtr; int cmdclass; int capacity; int read_blkbits; int read_partial; int write_misalign; int read_misalign; int dsr_imp; int r2w_factor; int write_blkbits; int write_partial; unsigned int erase_size; } ;
struct mmc_card {int host; int * raw_csd; struct mmc_csd csd; } ;


 int EINVAL ;
 int UNSTUFF_BITS (int *,int,int) ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ,scalar_t__) ;
 int* taac_exp ;
 int* taac_mant ;
 int* tran_exp ;
 int* tran_mant ;

__attribute__((used)) static int mmc_decode_csd(struct mmc_card *card)
{
 struct mmc_csd *csd = &card->csd;
 unsigned int e, m, a, b;
 u32 *resp = card->raw_csd;






 csd->structure = UNSTUFF_BITS(resp, 126, 2);
 if (csd->structure == 0) {
  pr_err("%s: unrecognised CSD structure version %d\n",
   mmc_hostname(card->host), csd->structure);
  return -EINVAL;
 }

 csd->mmca_vsn = UNSTUFF_BITS(resp, 122, 4);
 m = UNSTUFF_BITS(resp, 115, 4);
 e = UNSTUFF_BITS(resp, 112, 3);
 csd->taac_ns = (taac_exp[e] * taac_mant[m] + 9) / 10;
 csd->taac_clks = UNSTUFF_BITS(resp, 104, 8) * 100;

 m = UNSTUFF_BITS(resp, 99, 4);
 e = UNSTUFF_BITS(resp, 96, 3);
 csd->max_dtr = tran_exp[e] * tran_mant[m];
 csd->cmdclass = UNSTUFF_BITS(resp, 84, 12);

 e = UNSTUFF_BITS(resp, 47, 3);
 m = UNSTUFF_BITS(resp, 62, 12);
 csd->capacity = (1 + m) << (e + 2);

 csd->read_blkbits = UNSTUFF_BITS(resp, 80, 4);
 csd->read_partial = UNSTUFF_BITS(resp, 79, 1);
 csd->write_misalign = UNSTUFF_BITS(resp, 78, 1);
 csd->read_misalign = UNSTUFF_BITS(resp, 77, 1);
 csd->dsr_imp = UNSTUFF_BITS(resp, 76, 1);
 csd->r2w_factor = UNSTUFF_BITS(resp, 26, 3);
 csd->write_blkbits = UNSTUFF_BITS(resp, 22, 4);
 csd->write_partial = UNSTUFF_BITS(resp, 21, 1);

 if (csd->write_blkbits >= 9) {
  a = UNSTUFF_BITS(resp, 42, 5);
  b = UNSTUFF_BITS(resp, 37, 5);
  csd->erase_size = (a + 1) * (b + 1);
  csd->erase_size <<= csd->write_blkbits - 9;
 }

 return 0;
}
