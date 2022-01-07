
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_sdio_rx_data {int dummy; } ;
struct ath10k_htc_hdr {int len; int flags; } ;
struct ath10k {int dummy; } ;


 int ATH10K_HTC_FLAG_BUNDLE_MASK ;
 int ENOMEM ;
 size_t FIELD_GET (int ,int ) ;
 size_t HTC_HOST_MAX_MSG_PER_RX_BUNDLE ;
 int ath10k_sdio_mbox_alloc_rx_pkt (struct ath10k_sdio_rx_data*,size_t,size_t,int,int) ;
 int ath10k_warn (struct ath10k*,char*,int ,size_t) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ath10k_sdio_mbox_alloc_pkt_bundle(struct ath10k *ar,
          struct ath10k_sdio_rx_data *rx_pkts,
          struct ath10k_htc_hdr *htc_hdr,
          size_t full_len, size_t act_len,
          size_t *bndl_cnt)
{
 int ret, i;

 *bndl_cnt = FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, htc_hdr->flags);

 if (*bndl_cnt > HTC_HOST_MAX_MSG_PER_RX_BUNDLE) {
  ath10k_warn(ar,
       "HTC bundle length %u exceeds maximum %u\n",
       le16_to_cpu(htc_hdr->len),
       HTC_HOST_MAX_MSG_PER_RX_BUNDLE);
  return -ENOMEM;
 }







 for (i = 0; i < *bndl_cnt; i++) {
  ret = ath10k_sdio_mbox_alloc_rx_pkt(&rx_pkts[i],
          act_len,
          full_len,
          1,
          0);
  if (ret)
   return ret;
 }

 return 0;
}
