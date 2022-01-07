
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {scalar_t__ ah_version; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_ISR ;
 int AR5K_NUM_TX_QUEUES ;
 int AR5K_NUM_TX_QUEUES_NOQCU ;
 int AR5K_PISR ;
 int EINVAL ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int ath5k_hw_set_imr (struct ath5k_hw*,int ) ;
 int ath5k_hw_stop_rx_dma (struct ath5k_hw*) ;
 int ath5k_hw_stop_tx_dma (struct ath5k_hw*,int) ;

int
ath5k_hw_dma_stop(struct ath5k_hw *ah)
{
 int i, qmax, err;
 err = 0;


 ath5k_hw_set_imr(ah, 0);


 err = ath5k_hw_stop_rx_dma(ah);
 if (err)
  return err;



 if (ah->ah_version != AR5K_AR5210) {
  ath5k_hw_reg_write(ah, 0xffffffff, AR5K_PISR);
  qmax = AR5K_NUM_TX_QUEUES;
 } else {

  ath5k_hw_reg_read(ah, AR5K_ISR);
  qmax = AR5K_NUM_TX_QUEUES_NOQCU;
 }

 for (i = 0; i < qmax; i++) {
  err = ath5k_hw_stop_tx_dma(ah, i);

  if (err && err != -EINVAL)
   return err;
 }

 return 0;
}
