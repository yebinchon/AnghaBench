
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int priv; int dev; } ;
struct clk {int dummy; } ;


 int AR7_RESET_BIT_MDIO ;
 int CPMAC_MDIO_CONTROL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int MDIOC_CLKDIV (int) ;
 int MDIOC_ENABLE ;
 int ar7_device_reset (int ) ;
 struct clk* clk_get (int *,char*) ;
 int clk_get_rate (struct clk*) ;
 int cpmac_write (int ,int ,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int cpmac_mdio_reset(struct mii_bus *bus)
{
 struct clk *cpmac_clk;

 cpmac_clk = clk_get(&bus->dev, "cpmac");
 if (IS_ERR(cpmac_clk)) {
  pr_err("unable to get cpmac clock\n");
  return -1;
 }
 ar7_device_reset(AR7_RESET_BIT_MDIO);
 cpmac_write(bus->priv, CPMAC_MDIO_CONTROL, MDIOC_ENABLE |
      MDIOC_CLKDIV(clk_get_rate(cpmac_clk) / 2200000 - 1));

 return 0;
}
