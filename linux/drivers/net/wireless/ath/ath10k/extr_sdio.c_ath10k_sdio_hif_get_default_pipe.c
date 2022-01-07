
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_SDIO ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;

__attribute__((used)) static void ath10k_sdio_hif_get_default_pipe(struct ath10k *ar,
          u8 *ul_pipe, u8 *dl_pipe)
{
 ath10k_dbg(ar, ATH10K_DBG_SDIO, "sdio hif get default pipe\n");




 *ul_pipe = 0;
 *dl_pipe = 0;
}
