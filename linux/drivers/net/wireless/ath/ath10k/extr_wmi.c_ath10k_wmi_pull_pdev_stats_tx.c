
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_pdev_stats_tx {int txop_ovf; int phy_underrun; int pdev_resets; int pdev_tx_timeout; int pdev_cont_xretry; int illgl_rate_phy_err; int sw_retry_failure; int self_triggers; int data_rc; int tx_ko; int mpdus_requed; int tx_abort; int underrun; int hw_reaped; int hw_queued; int local_freed; int local_enqued; int wmm_drop; int mpdu_enqued; int msdu_enqued; int comp_delivered; int comp_queued; } ;
struct ath10k_fw_stats_pdev {void* txop_ovf; void* phy_underrun; void* pdev_resets; void* pdev_tx_timeout; void* pdev_cont_xretry; void* illgl_rate_phy_err; void* sw_retry_failure; void* self_triggers; void* data_rc; void* tx_ko; void* mpdus_requed; void* tx_abort; void* underrun; void* hw_reaped; void* hw_queued; void* local_freed; void* local_enqued; void* wmm_drop; void* mpdu_enqued; void* msdu_enqued; void* comp_delivered; void* comp_queued; } ;


 void* __le32_to_cpu (int ) ;

void ath10k_wmi_pull_pdev_stats_tx(const struct wmi_pdev_stats_tx *src,
       struct ath10k_fw_stats_pdev *dst)
{
 dst->comp_queued = __le32_to_cpu(src->comp_queued);
 dst->comp_delivered = __le32_to_cpu(src->comp_delivered);
 dst->msdu_enqued = __le32_to_cpu(src->msdu_enqued);
 dst->mpdu_enqued = __le32_to_cpu(src->mpdu_enqued);
 dst->wmm_drop = __le32_to_cpu(src->wmm_drop);
 dst->local_enqued = __le32_to_cpu(src->local_enqued);
 dst->local_freed = __le32_to_cpu(src->local_freed);
 dst->hw_queued = __le32_to_cpu(src->hw_queued);
 dst->hw_reaped = __le32_to_cpu(src->hw_reaped);
 dst->underrun = __le32_to_cpu(src->underrun);
 dst->tx_abort = __le32_to_cpu(src->tx_abort);
 dst->mpdus_requed = __le32_to_cpu(src->mpdus_requed);
 dst->tx_ko = __le32_to_cpu(src->tx_ko);
 dst->data_rc = __le32_to_cpu(src->data_rc);
 dst->self_triggers = __le32_to_cpu(src->self_triggers);
 dst->sw_retry_failure = __le32_to_cpu(src->sw_retry_failure);
 dst->illgl_rate_phy_err = __le32_to_cpu(src->illgl_rate_phy_err);
 dst->pdev_cont_xretry = __le32_to_cpu(src->pdev_cont_xretry);
 dst->pdev_tx_timeout = __le32_to_cpu(src->pdev_tx_timeout);
 dst->pdev_resets = __le32_to_cpu(src->pdev_resets);
 dst->phy_underrun = __le32_to_cpu(src->phy_underrun);
 dst->txop_ovf = __le32_to_cpu(src->txop_ovf);
}
