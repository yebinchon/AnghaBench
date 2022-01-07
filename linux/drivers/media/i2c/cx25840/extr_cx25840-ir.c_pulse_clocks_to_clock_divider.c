
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int FIFO_RXTX ;
 int RXCLK_RCD ;
 int do_div (int,int) ;

__attribute__((used)) static u16 pulse_clocks_to_clock_divider(u64 count)
{
 do_div(count, (FIFO_RXTX << 2) | 0x3);


 if (count > RXCLK_RCD + 1)
  count = RXCLK_RCD;
 else if (count < 2)
  count = 1;
 else
  count--;
 return (u16) count;
}
