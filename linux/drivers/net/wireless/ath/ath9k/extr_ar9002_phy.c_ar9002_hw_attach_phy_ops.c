
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw_private_ops {int do_getnf; int compute_pll_control; int olc_init; int spur_mitigate_freq; int rf_set_freq; int * set_rf_regs; } ;
struct ath_hw_ops {int tx99_stop; int tx99_start; int set_bt_ant_diversity; int spectral_scan_wait; int spectral_scan_trigger; int spectral_scan_config; int antdiv_comb_conf_set; int antdiv_comb_conf_get; } ;
struct ath_hw {int dummy; } ;


 int ar9002_hw_antdiv_comb_conf_get ;
 int ar9002_hw_antdiv_comb_conf_set ;
 int ar9002_hw_compute_pll_control ;
 int ar9002_hw_do_getnf ;
 int ar9002_hw_set_bt_ant_diversity ;
 int ar9002_hw_set_channel ;
 int ar9002_hw_set_nf_limits (struct ath_hw*) ;
 int ar9002_hw_spectral_scan_config ;
 int ar9002_hw_spectral_scan_trigger ;
 int ar9002_hw_spectral_scan_wait ;
 int ar9002_hw_spur_mitigate ;
 int ar9002_hw_tx99_start ;
 int ar9002_hw_tx99_stop ;
 int ar9002_olc_init ;
 struct ath_hw_ops* ath9k_hw_ops (struct ath_hw*) ;
 struct ath_hw_private_ops* ath9k_hw_private_ops (struct ath_hw*) ;

void ar9002_hw_attach_phy_ops(struct ath_hw *ah)
{
 struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);
 struct ath_hw_ops *ops = ath9k_hw_ops(ah);

 priv_ops->set_rf_regs = ((void*)0);
 priv_ops->rf_set_freq = ar9002_hw_set_channel;
 priv_ops->spur_mitigate_freq = ar9002_hw_spur_mitigate;
 priv_ops->olc_init = ar9002_olc_init;
 priv_ops->compute_pll_control = ar9002_hw_compute_pll_control;
 priv_ops->do_getnf = ar9002_hw_do_getnf;

 ops->antdiv_comb_conf_get = ar9002_hw_antdiv_comb_conf_get;
 ops->antdiv_comb_conf_set = ar9002_hw_antdiv_comb_conf_set;
 ops->spectral_scan_config = ar9002_hw_spectral_scan_config;
 ops->spectral_scan_trigger = ar9002_hw_spectral_scan_trigger;
 ops->spectral_scan_wait = ar9002_hw_spectral_scan_wait;




 ops->tx99_start = ar9002_hw_tx99_start;
 ops->tx99_stop = ar9002_hw_tx99_stop;

 ar9002_hw_set_nf_limits(ah);
}
