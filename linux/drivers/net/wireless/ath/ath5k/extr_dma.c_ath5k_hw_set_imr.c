
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int ah_imr; scalar_t__ ah_version; } ;
typedef enum ath5k_int { ____Placeholder_ath5k_int } ath5k_int ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_IER ;
 int AR5K_IER_DISABLE ;
 int AR5K_IER_ENABLE ;
 int AR5K_IMR ;
 int AR5K_IMR_DPERR ;
 int AR5K_IMR_HIUERR ;
 int AR5K_IMR_MCABT ;
 int AR5K_IMR_SSERR ;
 int AR5K_IMR_TIM ;
 int AR5K_INT_BCN_TIMEOUT ;
 int AR5K_INT_BNR ;
 int AR5K_INT_CAB_TIMEOUT ;
 int AR5K_INT_COMMON ;
 int AR5K_INT_DTIM ;
 int AR5K_INT_DTIM_SYNC ;
 int AR5K_INT_FATAL ;
 int AR5K_INT_GLOBAL ;
 int AR5K_INT_RXNOFRM ;
 int AR5K_INT_TIM ;
 int AR5K_PIMR ;
 int AR5K_RXNOFRM ;
 int AR5K_SIMR2 ;
 int AR5K_SIMR2_DPERR ;
 int AR5K_SIMR2_MCABT ;
 int AR5K_SIMR2_QCU_TXURN ;
 int AR5K_SIMR2_SSERR ;
 int AR5K_SISR2_BCN_TIMEOUT ;
 int AR5K_SISR2_CAB_TIMEOUT ;
 int AR5K_SISR2_DTIM ;
 int AR5K_SISR2_DTIM_SYNC ;
 int AR5K_SISR2_TIM ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

enum ath5k_int
ath5k_hw_set_imr(struct ath5k_hw *ah, enum ath5k_int new_mask)
{
 enum ath5k_int old_mask, int_mask;

 old_mask = ah->ah_imr;






 if (old_mask & AR5K_INT_GLOBAL) {
  ath5k_hw_reg_write(ah, AR5K_IER_DISABLE, AR5K_IER);
  ath5k_hw_reg_read(ah, AR5K_IER);
 }





 int_mask = new_mask & AR5K_INT_COMMON;

 if (ah->ah_version != AR5K_AR5210) {

  u32 simr2 = ath5k_hw_reg_read(ah, AR5K_SIMR2)
    & AR5K_SIMR2_QCU_TXURN;


  if (new_mask & AR5K_INT_FATAL) {
   int_mask |= AR5K_IMR_HIUERR;
   simr2 |= (AR5K_SIMR2_MCABT | AR5K_SIMR2_SSERR
    | AR5K_SIMR2_DPERR);
  }


  if (new_mask & AR5K_INT_TIM)
   int_mask |= AR5K_IMR_TIM;

  if (new_mask & AR5K_INT_TIM)
   simr2 |= AR5K_SISR2_TIM;
  if (new_mask & AR5K_INT_DTIM)
   simr2 |= AR5K_SISR2_DTIM;
  if (new_mask & AR5K_INT_DTIM_SYNC)
   simr2 |= AR5K_SISR2_DTIM_SYNC;
  if (new_mask & AR5K_INT_BCN_TIMEOUT)
   simr2 |= AR5K_SISR2_BCN_TIMEOUT;
  if (new_mask & AR5K_INT_CAB_TIMEOUT)
   simr2 |= AR5K_SISR2_CAB_TIMEOUT;


  if (new_mask & AR5K_INT_BNR)
   int_mask |= AR5K_INT_BNR;



  ath5k_hw_reg_write(ah, int_mask, AR5K_PIMR);
  ath5k_hw_reg_write(ah, simr2, AR5K_SIMR2);

 } else {

  if (new_mask & AR5K_INT_FATAL)
   int_mask |= (AR5K_IMR_SSERR | AR5K_IMR_MCABT
    | AR5K_IMR_HIUERR | AR5K_IMR_DPERR);


  ath5k_hw_reg_write(ah, int_mask, AR5K_IMR);
 }



 if (!(new_mask & AR5K_INT_RXNOFRM))
  ath5k_hw_reg_write(ah, 0, AR5K_RXNOFRM);


 ah->ah_imr = new_mask;


 if (new_mask & AR5K_INT_GLOBAL) {
  ath5k_hw_reg_write(ah, AR5K_IER_ENABLE, AR5K_IER);
  ath5k_hw_reg_read(ah, AR5K_IER);
 }

 return old_mask;
}
