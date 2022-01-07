
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct isc_clk {struct regmap* regmap; } ;
struct clk_hw {int dummy; } ;


 int ETIMEDOUT ;
 int ISC_CLKSR ;
 unsigned int ISC_CLKSR_SIP ;
 unsigned long jiffies ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 struct isc_clk* to_isc_clk (struct clk_hw*) ;
 unsigned long usecs_to_jiffies (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int isc_wait_clk_stable(struct clk_hw *hw)
{
 struct isc_clk *isc_clk = to_isc_clk(hw);
 struct regmap *regmap = isc_clk->regmap;
 unsigned long timeout = jiffies + usecs_to_jiffies(1000);
 unsigned int status;

 while (time_before(jiffies, timeout)) {
  regmap_read(regmap, ISC_CLKSR, &status);
  if (!(status & ISC_CLKSR_SIP))
   return 0;

  usleep_range(10, 250);
 }

 return -ETIMEDOUT;
}
