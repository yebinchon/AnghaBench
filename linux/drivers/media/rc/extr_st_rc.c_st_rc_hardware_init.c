
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rc_device {int overclocking; int sample_mult; int sample_div; scalar_t__ rx_base; scalar_t__ base; int sys_clock; int rstc; } ;


 scalar_t__ IRB_MAX_SYM_PERIOD ;
 scalar_t__ IRB_RX_POLARITY_INV ;
 int IRB_SAMPLE_FREQ ;
 scalar_t__ IRB_SAMPLE_RATE_COMM ;
 unsigned int MAX_SYMB_TIME ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int reset_control_deassert (int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void st_rc_hardware_init(struct st_rc_device *dev)
{
 int baseclock, freqdiff;
 unsigned int rx_max_symbol_per = MAX_SYMB_TIME;
 unsigned int rx_sampling_freq_div;


 reset_control_deassert(dev->rstc);

 clk_prepare_enable(dev->sys_clock);
 baseclock = clk_get_rate(dev->sys_clock);


 writel(1, dev->rx_base + IRB_RX_POLARITY_INV);

 rx_sampling_freq_div = baseclock / IRB_SAMPLE_FREQ;
 writel(rx_sampling_freq_div, dev->base + IRB_SAMPLE_RATE_COMM);

 freqdiff = baseclock - (rx_sampling_freq_div * IRB_SAMPLE_FREQ);
 if (freqdiff) {
  dev->overclocking = 1;
  dev->sample_mult = 1000;
  dev->sample_div = baseclock / (10000 * rx_sampling_freq_div);
  rx_max_symbol_per = (rx_max_symbol_per * 1000)/dev->sample_div;
 }

 writel(rx_max_symbol_per, dev->rx_base + IRB_MAX_SYM_PERIOD);
}
