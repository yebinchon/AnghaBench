
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_rx_status {size_t band; int rate_idx; int nss; int encoding; int bw; int enc_flags; int freq; } ;
struct TYPE_18__ {int info0; } ;
struct TYPE_16__ {int info0; } ;
struct TYPE_17__ {TYPE_7__ common; } ;
struct TYPE_15__ {int info4; int info3; int info2; int info1; int info0; } ;
struct TYPE_13__ {int info1; int info0; } ;
struct TYPE_14__ {TYPE_4__ common; } ;
struct TYPE_12__ {int info1; int info0; } ;
struct TYPE_11__ {int flags; } ;
struct htt_rx_desc {int msdu_payload; TYPE_9__ mpdu_end; TYPE_8__ msdu_end; TYPE_6__ ppdu_start; TYPE_5__ msdu_start; TYPE_3__ mpdu_start; TYPE_2__ attention; } ;
struct TYPE_10__ {struct ieee80211_supported_band* sbands; } ;
struct ath10k {TYPE_1__ mac; } ;


 int ATH10K_DBG_HTT_DUMP ;
 int GROUP_ID_IS_SU_MIMO (int) ;





 int MS (int,int ) ;
 int RATE_INFO_BW_40 ;
 int RX_ENC_FLAG_SHORT_GI ;
 int RX_ENC_HT ;
 int RX_ENC_VHT ;
 int RX_PPDU_START_INFO1_L_SIG_RATE ;
 int RX_PPDU_START_INFO1_L_SIG_RATE_SELECT ;
 int RX_PPDU_START_INFO1_PREAMBLE_TYPE ;
 int RX_PPDU_START_RATE_FLAG ;
 int __le32_to_cpu (int ) ;
 int ath10k_bw_to_mac80211_bw (int) ;
 int ath10k_dbg_dump (struct ath10k*,int ,int *,char*,int ,int) ;
 int ath10k_mac_hw_rate_to_idx (struct ieee80211_supported_band*,int,int) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;

__attribute__((used)) static void ath10k_htt_rx_h_rates(struct ath10k *ar,
      struct ieee80211_rx_status *status,
      struct htt_rx_desc *rxd)
{
 struct ieee80211_supported_band *sband;
 u8 cck, rate, bw, sgi, mcs, nss;
 u8 preamble = 0;
 u8 group_id;
 u32 info1, info2, info3;

 info1 = __le32_to_cpu(rxd->ppdu_start.info1);
 info2 = __le32_to_cpu(rxd->ppdu_start.info2);
 info3 = __le32_to_cpu(rxd->ppdu_start.info3);

 preamble = MS(info1, RX_PPDU_START_INFO1_PREAMBLE_TYPE);

 switch (preamble) {
 case 130:



  if (!status->freq)
   return;

  cck = info1 & RX_PPDU_START_INFO1_L_SIG_RATE_SELECT;
  rate = MS(info1, RX_PPDU_START_INFO1_L_SIG_RATE);
  rate &= ~RX_PPDU_START_RATE_FLAG;

  sband = &ar->mac.sbands[status->band];
  status->rate_idx = ath10k_mac_hw_rate_to_idx(sband, rate, cck);
  break;
 case 132:
 case 131:

  mcs = info2 & 0x1F;
  nss = mcs >> 3;
  bw = (info2 >> 7) & 1;
  sgi = (info3 >> 7) & 1;

  status->rate_idx = mcs;
  status->encoding = RX_ENC_HT;
  if (sgi)
   status->enc_flags |= RX_ENC_FLAG_SHORT_GI;
  if (bw)
   status->bw = RATE_INFO_BW_40;
  break;
 case 129:
 case 128:



  bw = info2 & 3;
  sgi = info3 & 1;
  group_id = (info2 >> 4) & 0x3F;

  if (GROUP_ID_IS_SU_MIMO(group_id)) {
   mcs = (info3 >> 4) & 0x0F;
   nss = ((info2 >> 10) & 0x07) + 1;
  } else {
   mcs = 0;
   nss = 1;
  }

  if (mcs > 0x09) {
   ath10k_warn(ar, "invalid MCS received %u\n", mcs);
   ath10k_warn(ar, "rxd %08x mpdu start %08x %08x msdu start %08x %08x ppdu start %08x %08x %08x %08x %08x\n",
        __le32_to_cpu(rxd->attention.flags),
        __le32_to_cpu(rxd->mpdu_start.info0),
        __le32_to_cpu(rxd->mpdu_start.info1),
        __le32_to_cpu(rxd->msdu_start.common.info0),
        __le32_to_cpu(rxd->msdu_start.common.info1),
        rxd->ppdu_start.info0,
        __le32_to_cpu(rxd->ppdu_start.info1),
        __le32_to_cpu(rxd->ppdu_start.info2),
        __le32_to_cpu(rxd->ppdu_start.info3),
        __le32_to_cpu(rxd->ppdu_start.info4));

   ath10k_warn(ar, "msdu end %08x mpdu end %08x\n",
        __le32_to_cpu(rxd->msdu_end.common.info0),
        __le32_to_cpu(rxd->mpdu_end.info0));

   ath10k_dbg_dump(ar, ATH10K_DBG_HTT_DUMP, ((void*)0),
     "rx desc msdu payload: ",
     rxd->msdu_payload, 50);
  }

  status->rate_idx = mcs;
  status->nss = nss;

  if (sgi)
   status->enc_flags |= RX_ENC_FLAG_SHORT_GI;

  status->bw = ath10k_bw_to_mac80211_bw(bw);
  status->encoding = RX_ENC_VHT;
  break;
 default:
  break;
 }
}
