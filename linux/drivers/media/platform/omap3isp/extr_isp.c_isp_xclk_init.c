
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct clk_init_data* init; } ;
struct isp_xclk {int divider; int clk; TYPE_2__ hw; int lock; int id; struct isp_device* isp; } ;
struct isp_device {struct isp_xclk* xclks; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct clk_init_data {char* name; int num_parents; int * parent_names; int * ops; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 unsigned int ARRAY_SIZE (struct isp_xclk*) ;
 int EINVAL ;
 int ERR_PTR (int ) ;
 int ISP_XCLK_A ;
 int ISP_XCLK_B ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_register (int *,TYPE_2__*) ;
 int isp_xclk_ops ;
 int isp_xclk_parent_name ;
 int isp_xclk_src_get ;
 int of_clk_add_provider (struct device_node*,int ,struct isp_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int isp_xclk_init(struct isp_device *isp)
{
 struct device_node *np = isp->dev->of_node;
 struct clk_init_data init = {};
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(isp->xclks); ++i)
  isp->xclks[i].clk = ERR_PTR(-EINVAL);

 for (i = 0; i < ARRAY_SIZE(isp->xclks); ++i) {
  struct isp_xclk *xclk = &isp->xclks[i];

  xclk->isp = isp;
  xclk->id = i == 0 ? ISP_XCLK_A : ISP_XCLK_B;
  xclk->divider = 1;
  spin_lock_init(&xclk->lock);

  init.name = i == 0 ? "cam_xclka" : "cam_xclkb";
  init.ops = &isp_xclk_ops;
  init.parent_names = &isp_xclk_parent_name;
  init.num_parents = 1;

  xclk->hw.init = &init;






  xclk->clk = clk_register(((void*)0), &xclk->hw);
  if (IS_ERR(xclk->clk))
   return PTR_ERR(xclk->clk);
 }

 if (np)
  of_clk_add_provider(np, isp_xclk_src_get, isp);

 return 0;
}
