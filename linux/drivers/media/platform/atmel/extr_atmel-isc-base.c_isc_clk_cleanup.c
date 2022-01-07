
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isc_device {struct isc_clk* isc_clks; TYPE_1__* dev; } ;
struct isc_clk {int clk; } ;
struct TYPE_2__ {int of_node; } ;


 unsigned int ARRAY_SIZE (struct isc_clk*) ;
 int IS_ERR (int ) ;
 int clk_unregister (int ) ;
 int of_clk_del_provider (int ) ;

void isc_clk_cleanup(struct isc_device *isc)
{
 unsigned int i;

 of_clk_del_provider(isc->dev->of_node);

 for (i = 0; i < ARRAY_SIZE(isc->isc_clks); i++) {
  struct isc_clk *isc_clk = &isc->isc_clks[i];

  if (!IS_ERR(isc_clk->clk))
   clk_unregister(isc_clk->clk);
 }
}
