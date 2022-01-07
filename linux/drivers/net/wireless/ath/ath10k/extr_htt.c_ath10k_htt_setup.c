
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_htt {int max_num_amsdu; int max_num_ampdu; int target_version_received; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 int ETIMEDOUT ;
 int HTT_TARGET_VERSION_TIMEOUT_HZ ;
 int ath10k_htt_h2t_aggr_cfg_msg (struct ath10k_htt*,int ,int ) ;
 int ath10k_htt_h2t_ver_req_msg (struct ath10k_htt*) ;
 int ath10k_htt_send_frag_desc_bank_cfg (struct ath10k_htt*) ;
 int ath10k_htt_send_rx_ring_cfg (struct ath10k_htt*) ;
 int ath10k_htt_verify_version (struct ath10k_htt*) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int init_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

int ath10k_htt_setup(struct ath10k_htt *htt)
{
 struct ath10k *ar = htt->ar;
 int status;

 init_completion(&htt->target_version_received);

 status = ath10k_htt_h2t_ver_req_msg(htt);
 if (status)
  return status;

 status = wait_for_completion_timeout(&htt->target_version_received,
          HTT_TARGET_VERSION_TIMEOUT_HZ);
 if (status == 0) {
  ath10k_warn(ar, "htt version request timed out\n");
  return -ETIMEDOUT;
 }

 status = ath10k_htt_verify_version(htt);
 if (status) {
  ath10k_warn(ar, "failed to verify htt version: %d\n",
       status);
  return status;
 }

 status = ath10k_htt_send_frag_desc_bank_cfg(htt);
 if (status)
  return status;

 status = ath10k_htt_send_rx_ring_cfg(htt);
 if (status) {
  ath10k_warn(ar, "failed to setup rx ring: %d\n",
       status);
  return status;
 }

 status = ath10k_htt_h2t_aggr_cfg_msg(htt,
          htt->max_num_ampdu,
          htt->max_num_amsdu);
 if (status) {
  ath10k_warn(ar, "failed to setup amsdu/ampdu limit: %d\n",
       status);
  return status;
 }

 return 0;
}
