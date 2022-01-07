
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ingenic_ecc_params {int bytes; int size; } ;
struct ingenic_ecc {int lock; scalar_t__ base; int dev; } ;


 scalar_t__ BCH_BHERR0 ;
 int BCH_BHERR_INDEX0_MASK ;
 int BCH_BHERR_INDEX0_SHIFT ;
 int BCH_BHERR_INDEX1_MASK ;
 int BCH_BHERR_INDEX1_SHIFT ;
 int BCH_BHINT_ALL_0 ;
 int BCH_BHINT_ALL_F ;
 int BCH_BHINT_DECF ;
 int BCH_BHINT_ERRC_MASK ;
 int BCH_BHINT_ERRC_SHIFT ;
 int BCH_BHINT_UNCOR ;
 int BIT (int) ;
 int EBADMSG ;
 int dev_err (int ,char*) ;
 int jz4725b_bch_disable (struct ingenic_ecc*) ;
 int jz4725b_bch_reset (struct ingenic_ecc*,struct ingenic_ecc_params*,int) ;
 int jz4725b_bch_wait_complete (struct ingenic_ecc*,int ,int*) ;
 int jz4725b_bch_write_data (struct ingenic_ecc*,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int jz4725b_correct(struct ingenic_ecc *bch,
      struct ingenic_ecc_params *params,
      u8 *buf, u8 *ecc_code)
{
 u32 reg, errors, bit;
 unsigned int i;
 int ret;

 mutex_lock(&bch->lock);

 ret = jz4725b_bch_reset(bch, params, 0);
 if (ret) {
  dev_err(bch->dev, "Unable to init BCH with given parameters\n");
  goto out;
 }

 jz4725b_bch_write_data(bch, buf, params->size);
 jz4725b_bch_write_data(bch, ecc_code, params->bytes);

 ret = jz4725b_bch_wait_complete(bch, BCH_BHINT_DECF, &reg);
 if (ret) {
  dev_err(bch->dev, "timed out while correcting data\n");
  goto out;
 }

 if (reg & (BCH_BHINT_ALL_F | BCH_BHINT_ALL_0)) {

  ret = 0;
  goto out;
 }

 if (reg & BCH_BHINT_UNCOR) {

  ret = -EBADMSG;
  goto out;
 }

 errors = (reg & BCH_BHINT_ERRC_MASK) >> BCH_BHINT_ERRC_SHIFT;


 for (i = 0; i < errors; i++) {
  if (i & 1) {
   bit = (reg & BCH_BHERR_INDEX1_MASK) >> BCH_BHERR_INDEX1_SHIFT;
  } else {
   reg = readl(bch->base + BCH_BHERR0 + (i * 4));
   bit = (reg & BCH_BHERR_INDEX0_MASK) >> BCH_BHERR_INDEX0_SHIFT;
  }

  buf[(bit >> 3)] ^= BIT(bit & 0x7);
 }

out:
 jz4725b_bch_disable(bch);
 mutex_unlock(&bch->lock);

 return ret;
}
