
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct camss_clock {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,int) ;

int camss_enable_clocks(int nclocks, struct camss_clock *clock,
   struct device *dev)
{
 int ret;
 int i;

 for (i = 0; i < nclocks; i++) {
  ret = clk_prepare_enable(clock[i].clk);
  if (ret) {
   dev_err(dev, "clock enable failed: %d\n", ret);
   goto error;
  }
 }

 return 0;

error:
 for (i--; i >= 0; i--)
  clk_disable_unprepare(clock[i].clk);

 return ret;
}
