
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {scalar_t__ ah_version; int ah_imr; int ah_txq_isr_qtrig; int ah_txq_isr_qcburn; int ah_txq_isr_qcborn; int ah_txq_isr_txurn; int ah_txq_isr_txok_all; } ;
typedef enum ath5k_int { ____Placeholder_ath5k_int } ath5k_int ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_INT_BCN_TIMEOUT ;
 int AR5K_INT_BNR ;
 int AR5K_INT_CAB_TIMEOUT ;
 int AR5K_INT_COMMON ;
 int AR5K_INT_DTIM ;
 int AR5K_INT_DTIM_SYNC ;
 int AR5K_INT_FATAL ;
 int AR5K_INT_NOCARD ;
 int AR5K_INT_QCBRORN ;
 int AR5K_INT_QCBRURN ;
 int AR5K_INT_QTRIG ;
 int AR5K_INT_TIM ;
 int AR5K_INT_TX_ALL ;
 int AR5K_ISR ;
 int AR5K_ISR_BCNMISC ;
 int AR5K_ISR_BITS_FROM_SISRS ;
 int AR5K_ISR_BNR ;
 int AR5K_ISR_DPERR ;
 int AR5K_ISR_HIUERR ;
 int AR5K_ISR_MCABT ;
 int AR5K_ISR_QCBRORN ;
 int AR5K_ISR_QCBRURN ;
 int AR5K_ISR_QTRIG ;
 int AR5K_ISR_SSERR ;
 int AR5K_ISR_TIM ;
 int AR5K_ISR_TXDESC ;
 int AR5K_ISR_TXEOL ;
 int AR5K_ISR_TXERR ;
 int AR5K_ISR_TXOK ;
 int AR5K_ISR_TXURN ;
 int AR5K_PISR ;
 int AR5K_REG_MS (int,int ) ;
 int AR5K_SISR0 ;
 int AR5K_SISR0_QCU_TXDESC ;
 int AR5K_SISR0_QCU_TXOK ;
 int AR5K_SISR1 ;
 int AR5K_SISR1_QCU_TXEOL ;
 int AR5K_SISR1_QCU_TXERR ;
 int AR5K_SISR2 ;
 int AR5K_SISR2_BCN_TIMEOUT ;
 int AR5K_SISR2_CAB_TIMEOUT ;
 int AR5K_SISR2_DTIM ;
 int AR5K_SISR2_DTIM_SYNC ;
 int AR5K_SISR2_QCU_TXURN ;
 int AR5K_SISR2_TIM ;
 int AR5K_SISR3 ;
 int AR5K_SISR3_QCBRORN ;
 int AR5K_SISR3_QCBRURN ;
 int AR5K_SISR4 ;
 int AR5K_SISR4_QTRIG ;
 int ATH5K_PRINTF (char*,int,int) ;
 int ENODEV ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 scalar_t__ net_ratelimit () ;
 scalar_t__ unlikely (int) ;

int
ath5k_hw_get_isr(struct ath5k_hw *ah, enum ath5k_int *interrupt_mask)
{
 u32 data = 0;







 if (ah->ah_version == AR5K_AR5210) {
  u32 isr = 0;
  isr = ath5k_hw_reg_read(ah, AR5K_ISR);
  if (unlikely(isr == AR5K_INT_NOCARD)) {
   *interrupt_mask = isr;
   return -ENODEV;
  }





  *interrupt_mask = (isr & AR5K_INT_COMMON) & ah->ah_imr;


  if (unlikely(isr & (AR5K_ISR_SSERR | AR5K_ISR_MCABT
      | AR5K_ISR_DPERR)))
   *interrupt_mask |= AR5K_INT_FATAL;
  data = isr;
 } else {
  u32 pisr = 0;
  u32 pisr_clear = 0;
  u32 sisr0 = 0;
  u32 sisr1 = 0;
  u32 sisr2 = 0;
  u32 sisr3 = 0;
  u32 sisr4 = 0;


  pisr = ath5k_hw_reg_read(ah, AR5K_PISR);
  if (unlikely(pisr == AR5K_INT_NOCARD)) {
   *interrupt_mask = pisr;
   return -ENODEV;
  }

  sisr0 = ath5k_hw_reg_read(ah, AR5K_SISR0);
  sisr1 = ath5k_hw_reg_read(ah, AR5K_SISR1);
  sisr2 = ath5k_hw_reg_read(ah, AR5K_SISR2);
  sisr3 = ath5k_hw_reg_read(ah, AR5K_SISR3);
  sisr4 = ath5k_hw_reg_read(ah, AR5K_SISR4);
  pisr_clear = (pisr & ~AR5K_ISR_BITS_FROM_SISRS) |
     (pisr & AR5K_INT_TX_ALL);
  ath5k_hw_reg_write(ah, sisr0, AR5K_SISR0);
  ath5k_hw_reg_write(ah, sisr1, AR5K_SISR1);
  ath5k_hw_reg_write(ah, sisr2, AR5K_SISR2);
  ath5k_hw_reg_write(ah, sisr3, AR5K_SISR3);
  ath5k_hw_reg_write(ah, sisr4, AR5K_SISR4);
  ath5k_hw_reg_write(ah, pisr_clear, AR5K_PISR);

  ath5k_hw_reg_read(ah, AR5K_PISR);





  *interrupt_mask = (pisr & AR5K_INT_COMMON) & ah->ah_imr;





  if (pisr & AR5K_ISR_TXOK)
   ah->ah_txq_isr_txok_all |= AR5K_REG_MS(sisr0,
      AR5K_SISR0_QCU_TXOK);

  if (pisr & AR5K_ISR_TXDESC)
   ah->ah_txq_isr_txok_all |= AR5K_REG_MS(sisr0,
      AR5K_SISR0_QCU_TXDESC);

  if (pisr & AR5K_ISR_TXERR)
   ah->ah_txq_isr_txok_all |= AR5K_REG_MS(sisr1,
      AR5K_SISR1_QCU_TXERR);

  if (pisr & AR5K_ISR_TXEOL)
   ah->ah_txq_isr_txok_all |= AR5K_REG_MS(sisr1,
      AR5K_SISR1_QCU_TXEOL);




  if (pisr & AR5K_ISR_TXURN)
   ah->ah_txq_isr_txurn |= AR5K_REG_MS(sisr2,
      AR5K_SISR2_QCU_TXURN);




  if (pisr & AR5K_ISR_TIM)
   *interrupt_mask |= AR5K_INT_TIM;


  if (pisr & AR5K_ISR_BCNMISC) {
   if (sisr2 & AR5K_SISR2_TIM)
    *interrupt_mask |= AR5K_INT_TIM;
   if (sisr2 & AR5K_SISR2_DTIM)
    *interrupt_mask |= AR5K_INT_DTIM;
   if (sisr2 & AR5K_SISR2_DTIM_SYNC)
    *interrupt_mask |= AR5K_INT_DTIM_SYNC;
   if (sisr2 & AR5K_SISR2_BCN_TIMEOUT)
    *interrupt_mask |= AR5K_INT_BCN_TIMEOUT;
   if (sisr2 & AR5K_SISR2_CAB_TIMEOUT)
    *interrupt_mask |= AR5K_INT_CAB_TIMEOUT;
  }





  if (unlikely(pisr & (AR5K_ISR_HIUERR)))
   *interrupt_mask |= AR5K_INT_FATAL;


  if (unlikely(pisr & (AR5K_ISR_BNR)))
   *interrupt_mask |= AR5K_INT_BNR;


  if (unlikely(pisr & (AR5K_ISR_QCBRORN))) {
   *interrupt_mask |= AR5K_INT_QCBRORN;
   ah->ah_txq_isr_qcborn |= AR5K_REG_MS(sisr3,
      AR5K_SISR3_QCBRORN);
  }


  if (unlikely(pisr & (AR5K_ISR_QCBRURN))) {
   *interrupt_mask |= AR5K_INT_QCBRURN;
   ah->ah_txq_isr_qcburn |= AR5K_REG_MS(sisr3,
      AR5K_SISR3_QCBRURN);
  }


  if (unlikely(pisr & (AR5K_ISR_QTRIG))) {
   *interrupt_mask |= AR5K_INT_QTRIG;
   ah->ah_txq_isr_qtrig |= AR5K_REG_MS(sisr4,
      AR5K_SISR4_QTRIG);
  }

  data = pisr;
 }





 if (unlikely(*interrupt_mask == 0 && net_ratelimit()))
  ATH5K_PRINTF("ISR: 0x%08x IMR: 0x%08x\n", data, ah->ah_imr);

 return 0;
}
