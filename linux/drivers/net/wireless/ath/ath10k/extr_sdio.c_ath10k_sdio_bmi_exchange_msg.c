
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int htc_addr; } ;
struct ath10k_sdio {void* bmi_buf; TYPE_1__ mbox_info; } ;
struct ath10k {int dummy; } ;


 int ath10k_sdio_bmi_credits (struct ath10k*) ;
 int ath10k_sdio_bmi_get_rx_lookahead (struct ath10k*) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_sdio_read (struct ath10k*,int ,void*,int ) ;
 int ath10k_sdio_write (struct ath10k*,int ,void*,int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int memcpy (void*,void*,int ) ;

__attribute__((used)) static int ath10k_sdio_bmi_exchange_msg(struct ath10k *ar,
     void *req, u32 req_len,
     void *resp, u32 *resp_len)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 u32 addr;
 int ret;

 if (req) {
  ret = ath10k_sdio_bmi_credits(ar);
  if (ret)
   return ret;

  addr = ar_sdio->mbox_info.htc_addr;

  memcpy(ar_sdio->bmi_buf, req, req_len);
  ret = ath10k_sdio_write(ar, addr, ar_sdio->bmi_buf, req_len);
  if (ret) {
   ath10k_warn(ar,
        "unable to send the bmi data to the device: %d\n",
        ret);
   return ret;
  }
 }

 if (!resp || !resp_len)

  return 0;
 ret = ath10k_sdio_bmi_get_rx_lookahead(ar);
 if (ret)
  return ret;


 addr = ar_sdio->mbox_info.htc_addr;
 ret = ath10k_sdio_read(ar, addr, ar_sdio->bmi_buf, *resp_len);
 if (ret) {
  ath10k_warn(ar,
       "unable to read the bmi data from the device: %d\n",
       ret);
  return ret;
 }

 memcpy(resp, ar_sdio->bmi_buf, *resp_len);

 return 0;
}
