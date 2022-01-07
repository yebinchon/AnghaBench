
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {scalar_t__ ah_version; int ah_proc_rx_desc; int ah_proc_tx_desc; int ah_setup_tx_desc; } ;


 scalar_t__ AR5K_AR5211 ;
 scalar_t__ AR5K_AR5212 ;
 int ENOTSUPP ;
 int ath5k_hw_proc_2word_tx_status ;
 int ath5k_hw_proc_4word_tx_status ;
 int ath5k_hw_proc_5210_rx_status ;
 int ath5k_hw_proc_5212_rx_status ;
 int ath5k_hw_setup_2word_tx_desc ;
 int ath5k_hw_setup_4word_tx_desc ;

int
ath5k_hw_init_desc_functions(struct ath5k_hw *ah)
{
 if (ah->ah_version == AR5K_AR5212) {
  ah->ah_setup_tx_desc = ath5k_hw_setup_4word_tx_desc;
  ah->ah_proc_tx_desc = ath5k_hw_proc_4word_tx_status;
  ah->ah_proc_rx_desc = ath5k_hw_proc_5212_rx_status;
 } else if (ah->ah_version <= AR5K_AR5211) {
  ah->ah_setup_tx_desc = ath5k_hw_setup_2word_tx_desc;
  ah->ah_proc_tx_desc = ath5k_hw_proc_2word_tx_status;
  ah->ah_proc_rx_desc = ath5k_hw_proc_5210_rx_status;
 } else
  return -ENOTSUPP;
 return 0;
}
