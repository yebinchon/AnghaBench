
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_channel {int hw_value; } ;
struct ath_common {int clockrate; } ;
struct ath5k_hw {int ah_bwmode; scalar_t__ ah_version; scalar_t__ ah_radio; scalar_t__ ah_mac_srev; struct ieee80211_channel* ah_current_channel; } ;


 scalar_t__ AR5K_AR5210 ;



 int AR5K_DCU_GBL_IFS_MISC ;
 int AR5K_DCU_GBL_IFS_MISC_USEC_DUR ;
 int AR5K_INIT_RX_LATENCY_5210 ;
 int AR5K_INIT_RX_LAT_MAX ;
 int AR5K_INIT_TXF2TXD_START_DEFAULT ;
 int AR5K_INIT_TXF2TXD_START_DELAY_10MHZ ;
 int AR5K_INIT_TXF2TXD_START_DELAY_5MHZ ;
 int AR5K_INIT_TX_LATENCY_5210 ;
 int AR5K_INIT_TX_LAT_MIN ;



 int AR5K_PHY_RF_CTL2 ;
 int AR5K_PHY_RF_CTL2_TXF2TXD_START ;
 int AR5K_REG_MS (int,int ) ;
 int AR5K_REG_SM (int,int ) ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int) ;
 scalar_t__ AR5K_RF2316 ;
 scalar_t__ AR5K_RF2317 ;
 scalar_t__ AR5K_RF2413 ;
 scalar_t__ AR5K_RF5112 ;
 scalar_t__ AR5K_RF5413 ;
 scalar_t__ AR5K_SREV_AR5211 ;
 int AR5K_USEC ;
 int AR5K_USEC_1 ;
 int AR5K_USEC_32 ;
 int AR5K_USEC_5211 ;
 int AR5K_USEC_RX_LATENCY_5210 ;
 int AR5K_USEC_RX_LATENCY_5211 ;
 int AR5K_USEC_TX_LATENCY_5210 ;
 int AR5K_USEC_TX_LATENCY_5211 ;
 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

__attribute__((used)) static void
ath5k_hw_init_core_clock(struct ath5k_hw *ah)
{
 struct ieee80211_channel *channel = ah->ah_current_channel;
 struct ath_common *common = ath5k_hw_common(ah);
 u32 usec_reg, txlat, rxlat, usec, clock, sclock, txf2txs;




 switch (channel->hw_value) {
 case 130:
  clock = 40;
  break;
 case 129:
  clock = 22;
  break;
 case 128:
 default:
  clock = 44;
  break;
 }



 switch (ah->ah_bwmode) {
 case 132:
  clock *= 2;
  break;
 case 133:
  clock /= 2;
  break;
 case 131:
  clock /= 4;
  break;
 default:
  break;
 }

 common->clockrate = clock;





 usec = clock - 1;
 usec = AR5K_REG_SM(usec, AR5K_USEC_1);


 if (ah->ah_version != AR5K_AR5210)
  AR5K_REG_WRITE_BITS(ah, AR5K_DCU_GBL_IFS_MISC,
     AR5K_DCU_GBL_IFS_MISC_USEC_DUR,
     clock);


 if ((ah->ah_radio == AR5K_RF5112) ||
     (ah->ah_radio == AR5K_RF2413) ||
     (ah->ah_radio == AR5K_RF5413) ||
     (ah->ah_radio == AR5K_RF2316) ||
     (ah->ah_radio == AR5K_RF2317))

  sclock = 40 - 1;
 else
  sclock = 32 - 1;
 sclock = AR5K_REG_SM(sclock, AR5K_USEC_32);




 usec_reg = ath5k_hw_reg_read(ah, AR5K_USEC_5211);
 txlat = AR5K_REG_MS(usec_reg, AR5K_USEC_TX_LATENCY_5211);
 rxlat = AR5K_REG_MS(usec_reg, AR5K_USEC_RX_LATENCY_5211);




 txf2txs = AR5K_INIT_TXF2TXD_START_DEFAULT;






 if (ah->ah_version == AR5K_AR5210) {

  txlat = AR5K_INIT_TX_LATENCY_5210;
  rxlat = AR5K_INIT_RX_LATENCY_5210;
 }

 if (ah->ah_mac_srev < AR5K_SREV_AR5211) {







  txlat = AR5K_REG_SM(txlat, AR5K_USEC_TX_LATENCY_5210);
  rxlat = AR5K_REG_SM(rxlat, AR5K_USEC_RX_LATENCY_5210);
 } else
 switch (ah->ah_bwmode) {
 case 133:
  txlat = AR5K_REG_SM(txlat * 2,
    AR5K_USEC_TX_LATENCY_5211);
  rxlat = AR5K_REG_SM(AR5K_INIT_RX_LAT_MAX,
    AR5K_USEC_RX_LATENCY_5211);
  txf2txs = AR5K_INIT_TXF2TXD_START_DELAY_10MHZ;
  break;
 case 131:
  txlat = AR5K_REG_SM(txlat * 4,
    AR5K_USEC_TX_LATENCY_5211);
  rxlat = AR5K_REG_SM(AR5K_INIT_RX_LAT_MAX,
    AR5K_USEC_RX_LATENCY_5211);
  txf2txs = AR5K_INIT_TXF2TXD_START_DELAY_5MHZ;
  break;
 case 132:
  txlat = AR5K_INIT_TX_LAT_MIN;
  rxlat = AR5K_REG_SM(rxlat / 2,
    AR5K_USEC_RX_LATENCY_5211);
  txf2txs = AR5K_INIT_TXF2TXD_START_DEFAULT;
  break;
 default:
  break;
 }

 usec_reg = (usec | sclock | txlat | rxlat);
 ath5k_hw_reg_write(ah, usec_reg, AR5K_USEC);


 if (ah->ah_radio == AR5K_RF5112) {
  AR5K_REG_WRITE_BITS(ah, AR5K_PHY_RF_CTL2,
     AR5K_PHY_RF_CTL2_TXF2TXD_START,
     txf2txs);
 }
}
