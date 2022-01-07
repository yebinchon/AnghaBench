
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_sdio {int n_rx_pkts; TYPE_1__* rx_pkts; } ;
struct ath10k_htc_hdr {int flags; int len; int eid; } ;
struct ath10k {int dummy; } ;
struct TYPE_4__ {int alloc_len; } ;


 scalar_t__ ATH10K_HIF_MBOX_BLOCK_SIZE ;
 int ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK ;
 int ATH10K_HTC_FLAG_BUNDLE_MASK ;
 int ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH ;
 size_t ATH10K_SDIO_MAX_BUFFER_SIZE ;
 int ATH10K_SDIO_MAX_RX_MSGS ;
 int EINVAL ;
 int ENOMEM ;
 size_t ath10k_sdio_calc_txrx_padded_len (struct ath10k_sdio*,size_t) ;
 int ath10k_sdio_mbox_alloc_pkt_bundle (struct ath10k*,TYPE_1__*,struct ath10k_htc_hdr*,size_t,size_t,size_t*) ;
 int ath10k_sdio_mbox_alloc_rx_pkt (TYPE_1__*,size_t,size_t,int,int) ;
 int ath10k_sdio_mbox_free_rx_pkt (TYPE_1__*) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
         u32 lookaheads[], int n_lookaheads)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct ath10k_htc_hdr *htc_hdr;
 size_t full_len, act_len;
 bool last_in_bundle;
 int ret, i;

 if (n_lookaheads > ATH10K_SDIO_MAX_RX_MSGS) {
  ath10k_warn(ar,
       "the total number of pkgs to be fetched (%u) exceeds maximum %u\n",
       n_lookaheads,
       ATH10K_SDIO_MAX_RX_MSGS);
  ret = -ENOMEM;
  goto err;
 }

 for (i = 0; i < n_lookaheads; i++) {
  htc_hdr = (struct ath10k_htc_hdr *)&lookaheads[i];
  last_in_bundle = 0;

  if (le16_to_cpu(htc_hdr->len) >
      ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH) {
   ath10k_warn(ar,
        "payload length %d exceeds max htc length: %zu\n",
        le16_to_cpu(htc_hdr->len),
        ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH);
   ret = -ENOMEM;
   goto err;
  }

  act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
  full_len = ath10k_sdio_calc_txrx_padded_len(ar_sdio, act_len);

  if (full_len > ATH10K_SDIO_MAX_BUFFER_SIZE) {
   ath10k_warn(ar,
        "rx buffer requested with invalid htc_hdr length (%d, 0x%x): %d\n",
        htc_hdr->eid, htc_hdr->flags,
        le16_to_cpu(htc_hdr->len));
   ret = -EINVAL;
   goto err;
  }

  if (htc_hdr->flags & ATH10K_HTC_FLAG_BUNDLE_MASK) {




   size_t bndl_cnt;

   ret = ath10k_sdio_mbox_alloc_pkt_bundle(ar,
        &ar_sdio->rx_pkts[i],
        htc_hdr,
        full_len,
        act_len,
        &bndl_cnt);

   if (ret) {
    ath10k_warn(ar, "alloc_bundle error %d\n", ret);
    goto err;
   }

   n_lookaheads += bndl_cnt;
   i += bndl_cnt;

   last_in_bundle = 1;
  }





  if (htc_hdr->flags & ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK)
   full_len += ATH10K_HIF_MBOX_BLOCK_SIZE;

  ret = ath10k_sdio_mbox_alloc_rx_pkt(&ar_sdio->rx_pkts[i],
          act_len,
          full_len,
          last_in_bundle,
          last_in_bundle);
  if (ret) {
   ath10k_warn(ar, "alloc_rx_pkt error %d\n", ret);
   goto err;
  }
 }

 ar_sdio->n_rx_pkts = i;

 return 0;

err:
 for (i = 0; i < ATH10K_SDIO_MAX_RX_MSGS; i++) {
  if (!ar_sdio->rx_pkts[i].alloc_len)
   break;
  ath10k_sdio_mbox_free_rx_pkt(&ar_sdio->rx_pkts[i]);
 }

 return ret;
}
