
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;
typedef int __le32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __le32_to_cpu (int ) ;
 int ath10k_sdio_hif_diag_read (struct ath10k*,int ,int *,int) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static int ath10k_sdio_hif_diag_read32(struct ath10k *ar, u32 address,
           u32 *value)
{
 __le32 *val;
 int ret;

 val = kzalloc(sizeof(*val), GFP_KERNEL);
 if (!val)
  return -ENOMEM;

 ret = ath10k_sdio_hif_diag_read(ar, address, val, sizeof(*val));
 if (ret)
  goto out;

 *value = __le32_to_cpu(*val);

out:
 kfree(val);

 return ret;
}
