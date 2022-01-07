
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_xclk {int clk; } ;
struct isp_device {struct isp_xclk* xclks; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 unsigned int ARRAY_SIZE (struct isp_xclk*) ;
 int IS_ERR (int ) ;
 int clk_unregister (int ) ;
 int of_clk_del_provider (struct device_node*) ;

__attribute__((used)) static void isp_xclk_cleanup(struct isp_device *isp)
{
 struct device_node *np = isp->dev->of_node;
 unsigned int i;

 if (np)
  of_clk_del_provider(np);

 for (i = 0; i < ARRAY_SIZE(isp->xclks); ++i) {
  struct isp_xclk *xclk = &isp->xclks[i];

  if (!IS_ERR(xclk->clk))
   clk_unregister(xclk->clk);
 }
}
