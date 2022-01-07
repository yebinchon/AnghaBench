
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_SNOC ;
 int ATH10K_HTC_SVC_ID_RSVD_CTRL ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_snoc_hif_map_service_to_pipe (struct ath10k*,int ,int *,int *) ;

__attribute__((used)) static void ath10k_snoc_hif_get_default_pipe(struct ath10k *ar,
          u8 *ul_pipe, u8 *dl_pipe)
{
 ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc hif get default pipe\n");

 (void)ath10k_snoc_hif_map_service_to_pipe(ar,
       ATH10K_HTC_SVC_ID_RSVD_CTRL,
       ul_pipe, dl_pipe);
}
