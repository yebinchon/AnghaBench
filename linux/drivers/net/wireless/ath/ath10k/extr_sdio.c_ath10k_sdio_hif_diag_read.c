
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int MBOX_WINDOW_DATA_ADDRESS ;
 int MBOX_WINDOW_READ_ADDR_ADDRESS ;
 int ath10k_sdio_read (struct ath10k*,int ,void*,size_t) ;
 int ath10k_sdio_write32 (struct ath10k*,int ,int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;

__attribute__((used)) static int ath10k_sdio_hif_diag_read(struct ath10k *ar, u32 address, void *buf,
         size_t buf_len)
{
 int ret;


 ret = ath10k_sdio_write32(ar, MBOX_WINDOW_READ_ADDR_ADDRESS, address);
 if (ret) {
  ath10k_warn(ar, "failed to set mbox window read address: %d", ret);
  return ret;
 }


 ret = ath10k_sdio_read(ar, MBOX_WINDOW_DATA_ADDRESS, buf, buf_len);
 if (ret) {
  ath10k_warn(ar, "failed to read from mbox window data address: %d\n",
       ret);
  return ret;
 }

 return 0;
}
