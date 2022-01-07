
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camss_clock {int clk; } ;


 int clk_disable_unprepare (int ) ;

void camss_disable_clocks(int nclocks, struct camss_clock *clock)
{
 int i;

 for (i = nclocks - 1; i >= 0; i--)
  clk_disable_unprepare(clock[i].clk);
}
