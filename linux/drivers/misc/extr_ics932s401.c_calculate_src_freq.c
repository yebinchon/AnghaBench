
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ics932s401_data {int* regs; } ;


 int BASE_CLOCK ;
 int ICS932S401_M_MASK ;
 size_t ICS932S401_REG_PCISRC_DIVISOR ;
 size_t ICS932S401_REG_SRC_M_CTRL ;
 size_t ICS932S401_REG_SRC_N_CTRL ;
 size_t ICS932S401_SRC_DIVISOR_MASK ;
 int* divisors ;

__attribute__((used)) static int calculate_src_freq(struct ics932s401_data *data)
{
 int m, n, freq;

 m = data->regs[ICS932S401_REG_SRC_M_CTRL] & ICS932S401_M_MASK;
 n = data->regs[ICS932S401_REG_SRC_N_CTRL];


 n |= ((int)data->regs[ICS932S401_REG_SRC_M_CTRL] & 0x80) << 1;
 n |= ((int)data->regs[ICS932S401_REG_SRC_M_CTRL] & 0x40) << 3;

 freq = BASE_CLOCK * (n + 8) / (m + 2);
 freq /= divisors[data->regs[ICS932S401_REG_PCISRC_DIVISOR] &
    ICS932S401_SRC_DIVISOR_MASK];

 return freq;
}
