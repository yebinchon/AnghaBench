
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int MBOX_WINDOW_DATA_ADDRESS ;
 int MBOX_WINDOW_WRITE_ADDR_ADDRESS ;
 int ath10k_sdio_write (struct ath10k*,int ,void const*,int) ;
 int ath10k_sdio_write32 (struct ath10k*,int ,int ) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;

__attribute__((used)) static int ath10k_sdio_hif_diag_write_mem(struct ath10k *ar, u32 address,
       const void *data, int nbytes)
{
 int ret;


 ret = ath10k_sdio_write(ar, MBOX_WINDOW_DATA_ADDRESS, data, nbytes);
 if (ret) {
  ath10k_warn(ar,
       "failed to write 0x%p to mbox window data address: %d\n",
       data, ret);
  return ret;
 }


 ret = ath10k_sdio_write32(ar, MBOX_WINDOW_WRITE_ADDR_ADDRESS, address);
 if (ret) {
  ath10k_warn(ar, "failed to set mbox window write address: %d", ret);
  return ret;
 }

 return 0;
}
