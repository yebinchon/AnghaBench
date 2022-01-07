
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ath5k_rx_status {int rs_datalen; int rs_more; int rs_status; void* rs_phyerr; void* rs_keyix; void* rs_tstamp; void* rs_antenna; void* rs_rate; void* rs_rssi; } ;
struct ath5k_hw_rx_status {int rx_status_0; int rx_status_1; } ;
struct TYPE_6__ {int cap_has_phyerr_counters; } ;
struct ath5k_hw {TYPE_3__ ah_capabilities; } ;
struct TYPE_4__ {struct ath5k_hw_rx_status rx_stat; } ;
struct TYPE_5__ {TYPE_1__ ds_rx; } ;
struct ath5k_desc {TYPE_2__ ud; } ;


 int AR5K_5212_RX_DESC_STATUS0_DATA_LEN ;
 int AR5K_5212_RX_DESC_STATUS0_MORE ;
 int AR5K_5212_RX_DESC_STATUS0_RECEIVE_ANTENNA ;
 int AR5K_5212_RX_DESC_STATUS0_RECEIVE_RATE ;
 int AR5K_5212_RX_DESC_STATUS0_RECEIVE_SIGNAL ;
 int AR5K_5212_RX_DESC_STATUS1_CRC_ERROR ;
 int AR5K_5212_RX_DESC_STATUS1_DECRYPT_CRC_ERROR ;
 int AR5K_5212_RX_DESC_STATUS1_DONE ;
 int AR5K_5212_RX_DESC_STATUS1_FRAME_RECEIVE_OK ;
 int AR5K_5212_RX_DESC_STATUS1_KEY_INDEX ;
 int AR5K_5212_RX_DESC_STATUS1_KEY_INDEX_VALID ;
 int AR5K_5212_RX_DESC_STATUS1_MIC_ERROR ;
 int AR5K_5212_RX_DESC_STATUS1_PHY_ERROR ;
 int AR5K_5212_RX_DESC_STATUS1_PHY_ERROR_CODE ;
 int AR5K_5212_RX_DESC_STATUS1_RECEIVE_TIMESTAMP ;
 void* AR5K_REG_MS (int,int ) ;
 int AR5K_RXERR_CRC ;
 int AR5K_RXERR_DECRYPT ;
 int AR5K_RXERR_MIC ;
 int AR5K_RXERR_PHY ;
 void* AR5K_RXKEYIX_INVALID ;
 int EINPROGRESS ;
 int READ_ONCE (int ) ;
 int ath5k_ani_phy_error_report (struct ath5k_hw*,void*) ;
 int memset (struct ath5k_rx_status*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ath5k_hw_proc_5212_rx_status(struct ath5k_hw *ah,
    struct ath5k_desc *desc,
    struct ath5k_rx_status *rs)
{
 struct ath5k_hw_rx_status *rx_status;
 u32 rxstat0, rxstat1;

 rx_status = &desc->ud.ds_rx.rx_stat;
 rxstat1 = READ_ONCE(rx_status->rx_status_1);


 if (unlikely(!(rxstat1 & AR5K_5212_RX_DESC_STATUS1_DONE)))
  return -EINPROGRESS;

 memset(rs, 0, sizeof(struct ath5k_rx_status));
 rxstat0 = READ_ONCE(rx_status->rx_status_0);




 rs->rs_datalen = rxstat0 & AR5K_5212_RX_DESC_STATUS0_DATA_LEN;
 rs->rs_rssi = AR5K_REG_MS(rxstat0,
  AR5K_5212_RX_DESC_STATUS0_RECEIVE_SIGNAL);
 rs->rs_rate = AR5K_REG_MS(rxstat0,
  AR5K_5212_RX_DESC_STATUS0_RECEIVE_RATE);
 rs->rs_antenna = AR5K_REG_MS(rxstat0,
  AR5K_5212_RX_DESC_STATUS0_RECEIVE_ANTENNA);
 rs->rs_more = !!(rxstat0 & AR5K_5212_RX_DESC_STATUS0_MORE);
 rs->rs_tstamp = AR5K_REG_MS(rxstat1,
  AR5K_5212_RX_DESC_STATUS1_RECEIVE_TIMESTAMP);




 if (rxstat1 & AR5K_5212_RX_DESC_STATUS1_KEY_INDEX_VALID)
  rs->rs_keyix = AR5K_REG_MS(rxstat1,
        AR5K_5212_RX_DESC_STATUS1_KEY_INDEX);
 else
  rs->rs_keyix = AR5K_RXKEYIX_INVALID;




 if (!(rxstat1 & AR5K_5212_RX_DESC_STATUS1_FRAME_RECEIVE_OK)) {
  if (rxstat1 & AR5K_5212_RX_DESC_STATUS1_CRC_ERROR)
   rs->rs_status |= AR5K_RXERR_CRC;

  if (rxstat1 & AR5K_5212_RX_DESC_STATUS1_PHY_ERROR) {
   rs->rs_status |= AR5K_RXERR_PHY;
   rs->rs_phyerr = AR5K_REG_MS(rxstat1,
    AR5K_5212_RX_DESC_STATUS1_PHY_ERROR_CODE);
   if (!ah->ah_capabilities.cap_has_phyerr_counters)
    ath5k_ani_phy_error_report(ah, rs->rs_phyerr);
  }

  if (rxstat1 & AR5K_5212_RX_DESC_STATUS1_DECRYPT_CRC_ERROR)
   rs->rs_status |= AR5K_RXERR_DECRYPT;

  if (rxstat1 & AR5K_5212_RX_DESC_STATUS1_MIC_ERROR)
   rs->rs_status |= AR5K_RXERR_MIC;
 }
 return 0;
}
