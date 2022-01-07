
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_rx_status {int rs_datalen; int rs_rssi; int* rs_rssi_ctl; int* rs_rssi_ext; int rs_keyix; int rs_rate; int rs_more; int rs_firstaggr; int rs_isaggr; int rs_moreaggr; int rs_antenna; int evm4; unsigned int rs_phyerr; int rs_status; int rs_flags; int evm3; int evm2; int evm1; int evm0; void* bw; int enc_flags; int rs_tstamp; } ;
struct ath_hw {int dummy; } ;
struct ar9003_rxs {int status11; int ds_info; int status2; int status5; int status1; int status4; int status10; int status9; int status8; int status7; int status6; int status3; } ;


 int AR_2040 ;
 int AR_CRCErr ;
 int AR_CtrlStat ;
 int AR_DataLen ;
 int AR_DecryptBusyErr ;
 int AR_DecryptCRCErr ;
 int AR_DescId ;
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
 int AR_TxRxDesc ;
 unsigned int ATH9K_PHYERR_OFDM_RESTART ;
 int ATH9K_RXERR_CRC ;
 int ATH9K_RXERR_DECRYPT ;
 int ATH9K_RXERR_KEYMISS ;
 int ATH9K_RXERR_MIC ;
 int ATH9K_RXERR_PHY ;
 int ATH9K_RXKEYIX_INVALID ;
 int ATH9K_RX_DECRYPT_BUSY ;
 int ATH9K_RX_DELIM_CRC_POST ;
 int ATH9K_RX_DELIM_CRC_PRE ;
 int EINPROGRESS ;
 int EINVAL ;
 int MS (int,int ) ;
 void* RATE_INFO_BW_20 ;
 void* RATE_INFO_BW_40 ;
 int RX_ENC_FLAG_SHORT_GI ;

int ath9k_hw_process_rxdesc_edma(struct ath_hw *ah, struct ath_rx_status *rxs,
     void *buf_addr)
{
 struct ar9003_rxs *rxsp = buf_addr;
 unsigned int phyerr;

 if ((rxsp->status11 & AR_RxDone) == 0)
  return -EINPROGRESS;

 if (MS(rxsp->ds_info, AR_DescId) != 0x168c)
  return -EINVAL;

 if ((rxsp->ds_info & (AR_TxRxDesc | AR_CtrlStat)) != 0)
  return -EINPROGRESS;

 rxs->rs_status = 0;
 rxs->rs_flags = 0;
 rxs->enc_flags = 0;
 rxs->bw = RATE_INFO_BW_20;

 rxs->rs_datalen = rxsp->status2 & AR_DataLen;
 rxs->rs_tstamp = rxsp->status3;


 rxs->rs_rssi = MS(rxsp->status5, AR_RxRSSICombined);
 rxs->rs_rssi_ctl[0] = MS(rxsp->status1, AR_RxRSSIAnt00);
 rxs->rs_rssi_ctl[1] = MS(rxsp->status1, AR_RxRSSIAnt01);
 rxs->rs_rssi_ctl[2] = MS(rxsp->status1, AR_RxRSSIAnt02);
 rxs->rs_rssi_ext[0] = MS(rxsp->status5, AR_RxRSSIAnt10);
 rxs->rs_rssi_ext[1] = MS(rxsp->status5, AR_RxRSSIAnt11);
 rxs->rs_rssi_ext[2] = MS(rxsp->status5, AR_RxRSSIAnt12);

 if (rxsp->status11 & AR_RxKeyIdxValid)
  rxs->rs_keyix = MS(rxsp->status11, AR_KeyIdx);
 else
  rxs->rs_keyix = ATH9K_RXKEYIX_INVALID;

 rxs->rs_rate = MS(rxsp->status1, AR_RxRate);
 rxs->rs_more = (rxsp->status2 & AR_RxMore) ? 1 : 0;

 rxs->rs_firstaggr = (rxsp->status11 & AR_RxFirstAggr) ? 1 : 0;
 rxs->rs_isaggr = (rxsp->status11 & AR_RxAggr) ? 1 : 0;
 rxs->rs_moreaggr = (rxsp->status11 & AR_RxMoreAggr) ? 1 : 0;
 rxs->rs_antenna = (MS(rxsp->status4, AR_RxAntenna) & 0x7);
 rxs->enc_flags |= (rxsp->status4 & AR_GI) ? RX_ENC_FLAG_SHORT_GI : 0;
 rxs->bw = (rxsp->status4 & AR_2040) ? RATE_INFO_BW_40 : RATE_INFO_BW_20;

 rxs->evm0 = rxsp->status6;
 rxs->evm1 = rxsp->status7;
 rxs->evm2 = rxsp->status8;
 rxs->evm3 = rxsp->status9;
 rxs->evm4 = (rxsp->status10 & 0xffff);

 if (rxsp->status11 & AR_PreDelimCRCErr)
  rxs->rs_flags |= ATH9K_RX_DELIM_CRC_PRE;

 if (rxsp->status11 & AR_PostDelimCRCErr)
  rxs->rs_flags |= ATH9K_RX_DELIM_CRC_POST;

 if (rxsp->status11 & AR_DecryptBusyErr)
  rxs->rs_flags |= ATH9K_RX_DECRYPT_BUSY;

 if ((rxsp->status11 & AR_RxFrameOK) == 0) {
  if (rxsp->status11 & AR_CRCErr)
   rxs->rs_status |= ATH9K_RXERR_CRC;
  else if (rxsp->status11 & AR_DecryptCRCErr)
   rxs->rs_status |= ATH9K_RXERR_DECRYPT;
  else if (rxsp->status11 & AR_MichaelErr)
   rxs->rs_status |= ATH9K_RXERR_MIC;
  if (rxsp->status11 & AR_PHYErr) {
   phyerr = MS(rxsp->status11, AR_PHYErrCode);
   if ((phyerr == ATH9K_PHYERR_OFDM_RESTART) &&
       (rxsp->status11 & AR_PostDelimCRCErr)) {
    rxs->rs_phyerr = 0;
   } else {
    rxs->rs_status |= ATH9K_RXERR_PHY;
    rxs->rs_phyerr = phyerr;
   }
  }
 }

 if (rxsp->status11 & AR_KeyMiss)
  rxs->rs_status |= ATH9K_RXERR_KEYMISS;

 return 0;
}
