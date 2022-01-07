
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rx_status_len; } ;
struct ath_hw {int tx_trig_level; TYPE_1__ caps; } ;
struct ath_common {scalar_t__ rx_bufsize; } ;


 int AR_9285_PCU_TXBUF_CTRL_USABLE_SIZE ;
 int AR_9340_PCU_TXBUF_CTRL_USABLE_SIZE ;
 int AR_AHB_MODE ;
 int AR_AHB_PREFETCH_RD_EN ;
 int AR_FTRIG ;
 int AR_PCU_TXBUF_CTRL ;
 int AR_PCU_TXBUF_CTRL_USABLE_SIZE ;
 int AR_RXBP_THRESH ;
 int AR_RXBP_THRESH_HP ;
 int AR_RXBP_THRESH_LP ;
 int AR_RXCFG ;
 int AR_RXCFG_DMASZ_128B ;
 int AR_RXCFG_DMASZ_MASK ;
 int AR_RXFIFO_CFG ;
 int AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340_13_OR_LATER (struct ath_hw*) ;
 int AR_TXCFG ;
 int AR_TXCFG_DMASZ_128B ;
 int AR_TXCFG_DMASZ_MASK ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_RMW (struct ath_hw*,int ,int ,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_reset_txstatus_ring (struct ath_hw*) ;
 int ath9k_hw_set_rx_bufsize (struct ath_hw*,scalar_t__) ;

__attribute__((used)) static inline void ath9k_hw_set_dma(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int txbuf_size;

 ENABLE_REGWRITE_BUFFER(ah);




 if (!AR_SREV_9300_20_OR_LATER(ah))
  REG_SET_BIT(ah, AR_AHB_MODE, AR_AHB_PREFETCH_RD_EN);




 REG_RMW(ah, AR_TXCFG, AR_TXCFG_DMASZ_128B, AR_TXCFG_DMASZ_MASK);

 REGWRITE_BUFFER_FLUSH(ah);






 if (!AR_SREV_9300_20_OR_LATER(ah))
  REG_RMW_FIELD(ah, AR_TXCFG, AR_FTRIG, ah->tx_trig_level);

 ENABLE_REGWRITE_BUFFER(ah);




 REG_RMW(ah, AR_RXCFG, AR_RXCFG_DMASZ_128B, AR_RXCFG_DMASZ_MASK);




 REG_WRITE(ah, AR_RXFIFO_CFG, 0x200);

 if (AR_SREV_9300_20_OR_LATER(ah)) {
  REG_RMW_FIELD(ah, AR_RXBP_THRESH, AR_RXBP_THRESH_HP, 0x1);
  REG_RMW_FIELD(ah, AR_RXBP_THRESH, AR_RXBP_THRESH_LP, 0x1);

  ath9k_hw_set_rx_bufsize(ah, common->rx_bufsize -
   ah->caps.rx_status_len);
 }





 if (AR_SREV_9285(ah)) {




  txbuf_size = AR_9285_PCU_TXBUF_CTRL_USABLE_SIZE;
 } else if (AR_SREV_9340_13_OR_LATER(ah)) {

  txbuf_size = AR_9340_PCU_TXBUF_CTRL_USABLE_SIZE;
 } else {
  txbuf_size = AR_PCU_TXBUF_CTRL_USABLE_SIZE;
 }

 if (!AR_SREV_9271(ah))
  REG_WRITE(ah, AR_PCU_TXBUF_CTRL, txbuf_size);

 REGWRITE_BUFFER_FLUSH(ah);

 if (AR_SREV_9300_20_OR_LATER(ah))
  ath9k_hw_reset_txstatus_ring(ah);
}
