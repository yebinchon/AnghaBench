
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct vivid_dev {int radio_rx_freq; int radio_tx_freq; int radio_rds_loop; int radio_rx_sig_qual; TYPE_1__ rds_gen; int radio_tx_rds_controls; scalar_t__ has_radio_tx; } ;


 int AM_FREQ_RANGE_HIGH ;
 int FM_FREQ_RANGE_LOW ;
 scalar_t__ abs (int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void vivid_radio_calc_sig_qual(struct vivid_dev *dev)
{
 int mod = 16000;
 int delta = 800;
 int sig_qual, sig_qual_tx = mod;





 if (dev->radio_rx_freq <= AM_FREQ_RANGE_HIGH) {
  mod /= 10;
  delta /= 10;
 }
 sig_qual = (dev->radio_rx_freq + delta) % mod - delta;
 if (dev->has_radio_tx)
  sig_qual_tx = dev->radio_rx_freq - dev->radio_tx_freq;
 if (abs(sig_qual_tx) <= abs(sig_qual)) {
  sig_qual = sig_qual_tx;




  if (!dev->radio_rds_loop && !dev->radio_tx_rds_controls)
   memset(dev->rds_gen.data, 0,
          sizeof(dev->rds_gen.data));
  dev->radio_rds_loop = dev->radio_rx_freq >= FM_FREQ_RANGE_LOW;
 } else {
  dev->radio_rds_loop = 0;
 }
 if (dev->radio_rx_freq <= AM_FREQ_RANGE_HIGH)
  sig_qual *= 10;
 dev->radio_rx_sig_qual = sig_qual;
}
