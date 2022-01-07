
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pix_clk_freq_hz; int sys_clk_freq_hz; int pix_clk_div; int sys_clk_div; } ;
struct TYPE_3__ {int pix_clk_freq_hz; int sys_clk_freq_hz; int pix_clk_div; int sys_clk_div; } ;
struct smiapp_pll {int flags; TYPE_2__ vt; TYPE_1__ op; int pll_op_clk_freq_hz; int pll_ip_clk_freq_hz; int ext_clk_freq_hz; int pll_multiplier; int pre_pll_clk_div; } ;
struct device {int dummy; } ;


 int SMIAPP_PLL_FLAG_NO_OP_CLOCKS ;
 int dev_dbg (struct device*,char*,int ) ;

__attribute__((used)) static void print_pll(struct device *dev, struct smiapp_pll *pll)
{
 dev_dbg(dev, "pre_pll_clk_div\t%u\n", pll->pre_pll_clk_div);
 dev_dbg(dev, "pll_multiplier \t%u\n", pll->pll_multiplier);
 if (!(pll->flags & SMIAPP_PLL_FLAG_NO_OP_CLOCKS)) {
  dev_dbg(dev, "op_sys_clk_div \t%u\n", pll->op.sys_clk_div);
  dev_dbg(dev, "op_pix_clk_div \t%u\n", pll->op.pix_clk_div);
 }
 dev_dbg(dev, "vt_sys_clk_div \t%u\n", pll->vt.sys_clk_div);
 dev_dbg(dev, "vt_pix_clk_div \t%u\n", pll->vt.pix_clk_div);

 dev_dbg(dev, "ext_clk_freq_hz \t%u\n", pll->ext_clk_freq_hz);
 dev_dbg(dev, "pll_ip_clk_freq_hz \t%u\n", pll->pll_ip_clk_freq_hz);
 dev_dbg(dev, "pll_op_clk_freq_hz \t%u\n", pll->pll_op_clk_freq_hz);
 if (!(pll->flags & SMIAPP_PLL_FLAG_NO_OP_CLOCKS)) {
  dev_dbg(dev, "op_sys_clk_freq_hz \t%u\n",
   pll->op.sys_clk_freq_hz);
  dev_dbg(dev, "op_pix_clk_freq_hz \t%u\n",
   pll->op.pix_clk_freq_hz);
 }
 dev_dbg(dev, "vt_sys_clk_freq_hz \t%u\n", pll->vt.sys_clk_freq_hz);
 dev_dbg(dev, "vt_pix_clk_freq_hz \t%u\n", pll->vt.pix_clk_freq_hz);
}
