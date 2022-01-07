
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {unsigned int* args; } ;
struct isp_device {TYPE_1__* xclks; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* clk; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int ENOENT ;
 struct clk* ERR_PTR (int ) ;

__attribute__((used)) static struct clk *isp_xclk_src_get(struct of_phandle_args *clkspec, void *data)
{
 unsigned int idx = clkspec->args[0];
 struct isp_device *isp = data;

 if (idx >= ARRAY_SIZE(isp->xclks))
  return ERR_PTR(-ENOENT);

 return isp->xclks[idx].clk;
}
