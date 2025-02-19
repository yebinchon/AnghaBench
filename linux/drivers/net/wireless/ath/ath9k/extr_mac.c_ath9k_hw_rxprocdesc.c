
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct ath_rx_status {int enc_flags; int rs_datalen; int rs_rate; int rs_more; int rs_firstaggr; int rs_isaggr; int rs_moreaggr; int rs_status; void* rs_phyerr; int rs_flags; void* bw; void* rs_antenna; void* rs_keyix; void** rs_rssi_ext; void** rs_rssi_ctl; void* rs_rssi; int rs_tstamp; } ;
struct ath_hw {int dummy; } ;
struct ath_desc {int dummy; } ;
struct TYPE_2__ {int rx; } ;
struct ar5416_desc {int ds_rxstatus8; int ds_rxstatus1; int ds_rxstatus4; int ds_rxstatus0; int ds_rxstatus3; int AR_RcvTimestamp; TYPE_1__ u; } ;


 struct ar5416_desc* AR5416DESC (struct ath_desc*) ;
 int AR_2040 ;
 int AR_CRCErr ;
 int AR_DataLen ;
 int AR_DecryptBusyErr ;
 int AR_DecryptCRCErr ;
 int AR_GI ;
 int AR_KeyIdx ;
 int AR_KeyMiss ;
 int AR_MichaelErr ;
 int AR_PHYErr ;
 int AR_PHYErrCode ;
 int AR_PostDelimCRCErr ;
 int AR_PreDelimCRCErr ;
 int AR_RxAggr ;
 int AR_RxAntenna ;
 int AR_RxDone ;
 int AR_RxFirstAggr ;
 int AR_RxFrameOK ;
 int AR_RxKeyIdxValid ;
 int AR_RxMore ;
 int AR_RxMoreAggr ;
 int AR_RxRSSIAnt00 ;
 int AR_RxRSSIAnt01 ;
 int AR_RxRSSIAnt02 ;
 int AR_RxRSSIAnt10 ;
 int AR_RxRSSIAnt11 ;
 int AR_RxRSSIAnt12 ;
 int AR_RxRSSICombined ;
 int AR_RxRate ;
 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 int AR_STBC ;
 void* ATH9K_RSSI_BAD ;
 int ATH9K_RXERR_CORRUPT_DESC ;
 int ATH9K_RXERR_CRC ;
 int ATH9K_RXERR_DECRYPT ;
 int ATH9K_RXERR_KEYMISS ;
 int ATH9K_RXERR_MIC ;
 int ATH9K_RXERR_PHY ;
 void* ATH9K_RXKEYIX_INVALID ;
 int ATH9K_RX_DECRYPT_BUSY ;
 int ATH9K_RX_DELIM_CRC_POST ;
 int ATH9K_RX_DELIM_CRC_PRE ;
 int EINPROGRESS ;
 void* MS (int,int ) ;
 void* RATE_INFO_BW_20 ;
 void* RATE_INFO_BW_40 ;
 int RX_ENC_FLAG_SHORT_GI ;
 int RX_ENC_FLAG_STBC_SHIFT ;

int ath9k_hw_rxprocdesc(struct ath_hw *ah, struct ath_desc *ds,
   struct ath_rx_status *rs)
{
 struct ar5416_desc ads;
 struct ar5416_desc *adsp = AR5416DESC(ds);
 u32 phyerr;

 if ((adsp->ds_rxstatus8 & AR_RxDone) == 0)
  return -EINPROGRESS;

 ads.u.rx = adsp->u.rx;

 rs->rs_status = 0;
 rs->rs_flags = 0;
 rs->enc_flags = 0;
 rs->bw = RATE_INFO_BW_20;

 rs->rs_datalen = ads.ds_rxstatus1 & AR_DataLen;
 rs->rs_tstamp = ads.AR_RcvTimestamp;

 if (ads.ds_rxstatus8 & AR_PostDelimCRCErr) {
  rs->rs_rssi = ATH9K_RSSI_BAD;
  rs->rs_rssi_ctl[0] = ATH9K_RSSI_BAD;
  rs->rs_rssi_ctl[1] = ATH9K_RSSI_BAD;
  rs->rs_rssi_ctl[2] = ATH9K_RSSI_BAD;
  rs->rs_rssi_ext[0] = ATH9K_RSSI_BAD;
  rs->rs_rssi_ext[1] = ATH9K_RSSI_BAD;
  rs->rs_rssi_ext[2] = ATH9K_RSSI_BAD;
 } else {
  rs->rs_rssi = MS(ads.ds_rxstatus4, AR_RxRSSICombined);
  rs->rs_rssi_ctl[0] = MS(ads.ds_rxstatus0,
      AR_RxRSSIAnt00);
  rs->rs_rssi_ctl[1] = MS(ads.ds_rxstatus0,
      AR_RxRSSIAnt01);
  rs->rs_rssi_ctl[2] = MS(ads.ds_rxstatus0,
      AR_RxRSSIAnt02);
  rs->rs_rssi_ext[0] = MS(ads.ds_rxstatus4,
      AR_RxRSSIAnt10);
  rs->rs_rssi_ext[1] = MS(ads.ds_rxstatus4,
      AR_RxRSSIAnt11);
  rs->rs_rssi_ext[2] = MS(ads.ds_rxstatus4,
      AR_RxRSSIAnt12);
 }
 if (ads.ds_rxstatus8 & AR_RxKeyIdxValid)
  rs->rs_keyix = MS(ads.ds_rxstatus8, AR_KeyIdx);
 else
  rs->rs_keyix = ATH9K_RXKEYIX_INVALID;

 rs->rs_rate = MS(ads.ds_rxstatus0, AR_RxRate);
 rs->rs_more = (ads.ds_rxstatus1 & AR_RxMore) ? 1 : 0;

 rs->rs_firstaggr = (ads.ds_rxstatus8 & AR_RxFirstAggr) ? 1 : 0;
 rs->rs_isaggr = (ads.ds_rxstatus8 & AR_RxAggr) ? 1 : 0;
 rs->rs_moreaggr = (ads.ds_rxstatus8 & AR_RxMoreAggr) ? 1 : 0;
 rs->rs_antenna = MS(ads.ds_rxstatus3, AR_RxAntenna);


 rs->enc_flags |=
  (ads.ds_rxstatus3 & AR_GI) ? RX_ENC_FLAG_SHORT_GI : 0;
 rs->bw = (ads.ds_rxstatus3 & AR_2040) ? RATE_INFO_BW_40 :
      RATE_INFO_BW_20;
 if (AR_SREV_9280_20_OR_LATER(ah))
  rs->enc_flags |=
   (ads.ds_rxstatus3 & AR_STBC) ?

    (1 << RX_ENC_FLAG_STBC_SHIFT) : 0;

 if (ads.ds_rxstatus8 & AR_PreDelimCRCErr)
  rs->rs_flags |= ATH9K_RX_DELIM_CRC_PRE;
 if (ads.ds_rxstatus8 & AR_PostDelimCRCErr)
  rs->rs_flags |= ATH9K_RX_DELIM_CRC_POST;
 if (ads.ds_rxstatus8 & AR_DecryptBusyErr)
  rs->rs_flags |= ATH9K_RX_DECRYPT_BUSY;

 if ((ads.ds_rxstatus8 & AR_RxFrameOK) == 0) {






  if (ads.ds_rxstatus8 & AR_PHYErr) {
   rs->rs_status |= ATH9K_RXERR_PHY;
   phyerr = MS(ads.ds_rxstatus8, AR_PHYErrCode);
   rs->rs_phyerr = phyerr;
  } else if (ads.ds_rxstatus8 & AR_CRCErr)
   rs->rs_status |= ATH9K_RXERR_CRC;
  else if (ads.ds_rxstatus8 & AR_DecryptCRCErr)
   rs->rs_status |= ATH9K_RXERR_DECRYPT;
  else if (ads.ds_rxstatus8 & AR_MichaelErr)
   rs->rs_status |= ATH9K_RXERR_MIC;
 } else {
  if (ads.ds_rxstatus8 &
      (AR_CRCErr | AR_PHYErr | AR_DecryptCRCErr | AR_MichaelErr))
   rs->rs_status |= ATH9K_RXERR_CORRUPT_DESC;


  if (rs->rs_rate >= 0x90)
   rs->rs_status |= ATH9K_RXERR_CORRUPT_DESC;
 }

 if (ads.ds_rxstatus8 & AR_KeyMiss)
  rs->rs_status |= ATH9K_RXERR_KEYMISS;

 return 0;
}
