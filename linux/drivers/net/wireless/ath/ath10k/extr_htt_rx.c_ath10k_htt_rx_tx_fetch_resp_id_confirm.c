
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;
typedef int __le32 ;


 int ATH10K_DBG_HTT ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int le32_to_cpu (int const) ;

__attribute__((used)) static void ath10k_htt_rx_tx_fetch_resp_id_confirm(struct ath10k *ar,
         const __le32 *resp_ids,
         int num_resp_ids)
{
 int i;
 u32 resp_id;

 ath10k_dbg(ar, ATH10K_DBG_HTT, "htt rx tx fetch confirm num_resp_ids %d\n",
     num_resp_ids);

 for (i = 0; i < num_resp_ids; i++) {
  resp_id = le32_to_cpu(resp_ids[i]);

  ath10k_dbg(ar, ATH10K_DBG_HTT, "htt rx tx fetch confirm resp_id %u\n",
      resp_id);


 }
}
