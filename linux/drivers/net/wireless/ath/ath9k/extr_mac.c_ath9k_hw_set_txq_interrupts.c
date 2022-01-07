
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int txurn_interrupt_mask; int imrs2_reg; int txeol_interrupt_mask; int txerr_interrupt_mask; int txdesc_interrupt_mask; int txok_interrupt_mask; } ;
struct ath9k_tx_queue_info {int dummy; } ;


 int AR_IMR_S0 ;
 int AR_IMR_S0_QCU_TXDESC ;
 int AR_IMR_S0_QCU_TXOK ;
 int AR_IMR_S1 ;
 int AR_IMR_S1_QCU_TXEOL ;
 int AR_IMR_S1_QCU_TXERR ;
 int AR_IMR_S2 ;
 int AR_IMR_S2_QCU_TXURN ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int INTERRUPT ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int SM (int ,int ) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,int ,int ,int ,int ,int) ;

__attribute__((used)) static void ath9k_hw_set_txq_interrupts(struct ath_hw *ah,
     struct ath9k_tx_queue_info *qi)
{
 ath_dbg(ath9k_hw_common(ah), INTERRUPT,
  "tx ok 0x%x err 0x%x desc 0x%x eol 0x%x urn 0x%x\n",
  ah->txok_interrupt_mask, ah->txerr_interrupt_mask,
  ah->txdesc_interrupt_mask, ah->txeol_interrupt_mask,
  ah->txurn_interrupt_mask);

 ENABLE_REGWRITE_BUFFER(ah);

 REG_WRITE(ah, AR_IMR_S0,
    SM(ah->txok_interrupt_mask, AR_IMR_S0_QCU_TXOK)
    | SM(ah->txdesc_interrupt_mask, AR_IMR_S0_QCU_TXDESC));
 REG_WRITE(ah, AR_IMR_S1,
    SM(ah->txerr_interrupt_mask, AR_IMR_S1_QCU_TXERR)
    | SM(ah->txeol_interrupt_mask, AR_IMR_S1_QCU_TXEOL));

 ah->imrs2_reg &= ~AR_IMR_S2_QCU_TXURN;
 ah->imrs2_reg |= (ah->txurn_interrupt_mask & AR_IMR_S2_QCU_TXURN);
 REG_WRITE(ah, AR_IMR_S2, ah->imrs2_reg);

 REGWRITE_BUFFER_FLUSH(ah);
}
