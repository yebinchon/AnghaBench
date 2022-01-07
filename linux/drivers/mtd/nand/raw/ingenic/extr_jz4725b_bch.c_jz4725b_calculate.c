
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ingenic_ecc_params {int bytes; int size; } ;
struct ingenic_ecc {int lock; int dev; } ;


 int BCH_BHINT_ENCF ;
 int dev_err (int ,char*) ;
 int jz4725b_bch_disable (struct ingenic_ecc*) ;
 int jz4725b_bch_read_parity (struct ingenic_ecc*,int *,int ) ;
 int jz4725b_bch_reset (struct ingenic_ecc*,struct ingenic_ecc_params*,int) ;
 int jz4725b_bch_wait_complete (struct ingenic_ecc*,int ,int *) ;
 int jz4725b_bch_write_data (struct ingenic_ecc*,int const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int jz4725b_calculate(struct ingenic_ecc *bch,
        struct ingenic_ecc_params *params,
        const u8 *buf, u8 *ecc_code)
{
 int ret;

 mutex_lock(&bch->lock);

 ret = jz4725b_bch_reset(bch, params, 1);
 if (ret) {
  dev_err(bch->dev, "Unable to init BCH with given parameters\n");
  goto out_disable;
 }

 jz4725b_bch_write_data(bch, buf, params->size);

 ret = jz4725b_bch_wait_complete(bch, BCH_BHINT_ENCF, ((void*)0));
 if (ret) {
  dev_err(bch->dev, "timed out while calculating ECC\n");
  goto out_disable;
 }

 jz4725b_bch_read_parity(bch, ecc_code, params->bytes);

out_disable:
 jz4725b_bch_disable(bch);
 mutex_unlock(&bch->lock);

 return ret;
}
