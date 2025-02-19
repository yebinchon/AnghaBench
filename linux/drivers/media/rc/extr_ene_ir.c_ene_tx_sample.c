
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ene_device {int tx_sample_pulse; int tx_sample; scalar_t__ tx_pos; scalar_t__ tx_len; int tx_done; int tx_reg; int tx_sim_timer; int * tx_buffer; int tx_complete; } ;


 int DIV_ROUND_CLOSEST (int ,int) ;
 int ENE_CIRRLC_OUT0 ;
 int ENE_CIRRLC_OUT1 ;
 scalar_t__ ENE_CIRRLC_OUT_MASK ;
 int ENE_CIRRLC_OUT_PULSE ;
 int HZ ;
 int complete (int *) ;
 int dbg (char*,...) ;
 int ene_tx_disable (struct ene_device*) ;
 int ene_write_reg (struct ene_device*,int ,int) ;
 scalar_t__ jiffies ;
 int min (int,unsigned int) ;
 int mod_timer (int *,scalar_t__) ;
 int pr_warn (char*) ;
 int sample_period ;
 scalar_t__ txsim ;

__attribute__((used)) static void ene_tx_sample(struct ene_device *dev)
{
 u8 raw_tx;
 u32 sample;
 bool pulse = dev->tx_sample_pulse;

 if (!dev->tx_buffer) {
  pr_warn("TX: BUG: attempt to transmit NULL buffer\n");
  return;
 }


 if (!dev->tx_sample) {

  if (dev->tx_pos == dev->tx_len) {
   if (!dev->tx_done) {
    dbg("TX: no more data to send");
    dev->tx_done = 1;
    goto exit;
   } else {
    dbg("TX: last sample sent by hardware");
    ene_tx_disable(dev);
    complete(&dev->tx_complete);
    return;
   }
  }

  sample = dev->tx_buffer[dev->tx_pos++];
  dev->tx_sample_pulse = !dev->tx_sample_pulse;

  dev->tx_sample = DIV_ROUND_CLOSEST(sample, sample_period);

  if (!dev->tx_sample)
   dev->tx_sample = 1;
 }

 raw_tx = min(dev->tx_sample , (unsigned int)ENE_CIRRLC_OUT_MASK);
 dev->tx_sample -= raw_tx;

 dbg("TX: sample %8d (%s)", raw_tx * sample_period,
      pulse ? "pulse" : "space");
 if (pulse)
  raw_tx |= ENE_CIRRLC_OUT_PULSE;

 ene_write_reg(dev,
  dev->tx_reg ? ENE_CIRRLC_OUT1 : ENE_CIRRLC_OUT0, raw_tx);

 dev->tx_reg = !dev->tx_reg;
exit:

 if (txsim)
  mod_timer(&dev->tx_sim_timer, jiffies + HZ / 500);
}
