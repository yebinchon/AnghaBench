
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int htc_addr; } ;
struct ath6kl {TYPE_1__ mbox_info; } ;


 int HIF_WR_SYNC_BYTE_INC ;
 int ath6kl_err (char*) ;
 int ath6kl_sdio_bmi_credits (struct ath6kl*) ;
 int ath6kl_sdio_read_write_sync (struct ath6kl*,int ,int *,int ,int ) ;

__attribute__((used)) static int ath6kl_sdio_bmi_write(struct ath6kl *ar, u8 *buf, u32 len)
{
 int ret;
 u32 addr;

 ret = ath6kl_sdio_bmi_credits(ar);
 if (ret)
  return ret;

 addr = ar->mbox_info.htc_addr;

 ret = ath6kl_sdio_read_write_sync(ar, addr, buf, len,
       HIF_WR_SYNC_BYTE_INC);
 if (ret) {
  ath6kl_err("unable to send the bmi data to the device\n");
  return ret;
 }

 return 0;
}
