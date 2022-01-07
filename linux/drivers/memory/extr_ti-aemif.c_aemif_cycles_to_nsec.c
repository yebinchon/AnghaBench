
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSEC_PER_MSEC ;

__attribute__((used)) static inline int aemif_cycles_to_nsec(int val, unsigned long clk_rate)
{
 return ((val + 1) * NSEC_PER_MSEC) / clk_rate;
}
