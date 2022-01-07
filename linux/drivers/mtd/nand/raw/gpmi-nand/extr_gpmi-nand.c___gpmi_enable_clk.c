
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct clk** clock; } ;
struct gpmi_nand_data {TYPE_1__ resources; } ;
struct clk {int dummy; } ;


 int GPMI_CLK_MAX ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;

__attribute__((used)) static int __gpmi_enable_clk(struct gpmi_nand_data *this, bool v)
{
 struct clk *clk;
 int ret;
 int i;

 for (i = 0; i < GPMI_CLK_MAX; i++) {
  clk = this->resources.clock[i];
  if (!clk)
   break;

  if (v) {
   ret = clk_prepare_enable(clk);
   if (ret)
    goto err_clk;
  } else {
   clk_disable_unprepare(clk);
  }
 }
 return 0;

err_clk:
 for (; i > 0; i--)
  clk_disable_unprepare(this->resources.clock[i - 1]);
 return ret;
}
