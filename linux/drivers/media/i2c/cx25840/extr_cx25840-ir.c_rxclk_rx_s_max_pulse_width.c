
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int CX25840_IR_RXCLK_REG ;
 int FIFO_RXTX ;
 scalar_t__ IR_MAX_DURATION ;
 int cx25840_write4 (struct i2c_client*,int ,int ) ;
 int ns_to_pulse_clocks (scalar_t__) ;
 int pulse_clocks_to_clock_divider (int ) ;
 int pulse_width_count_to_ns (int ,int ) ;

__attribute__((used)) static u32 rxclk_rx_s_max_pulse_width(struct i2c_client *c, u32 ns,
          u16 *divider)
{
 u64 pulse_clocks;

 if (ns > IR_MAX_DURATION)
  ns = IR_MAX_DURATION;
 pulse_clocks = ns_to_pulse_clocks(ns);
 *divider = pulse_clocks_to_clock_divider(pulse_clocks);
 cx25840_write4(c, CX25840_IR_RXCLK_REG, *divider);
 return (u32) pulse_width_count_to_ns(FIFO_RXTX, *divider);
}
