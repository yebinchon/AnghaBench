
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ smiapp_profile; } ;
struct TYPE_6__ {int sys_clk_div; int pix_clk_div; int sys_clk_freq_hz; } ;
struct TYPE_4__ {int sys_clk_div; int pix_clk_div; } ;
struct smiapp_pll {TYPE_3__ op; int pll_multiplier; int pre_pll_clk_div; TYPE_1__ vt; } ;
struct smiapp_sensor {TYPE_2__ minfo; struct smiapp_pll pll; } ;


 int DIV_ROUND_UP (int ,int) ;
 scalar_t__ SMIAPP_PROFILE_0 ;
 int SMIAPP_REG_U16_OP_PIX_CLK_DIV ;
 int SMIAPP_REG_U16_OP_SYS_CLK_DIV ;
 int SMIAPP_REG_U16_PLL_MULTIPLIER ;
 int SMIAPP_REG_U16_PRE_PLL_CLK_DIV ;
 int SMIAPP_REG_U16_VT_PIX_CLK_DIV ;
 int SMIAPP_REG_U16_VT_SYS_CLK_DIV ;
 int SMIAPP_REG_U32_REQUESTED_LINK_BIT_RATE_MBPS ;
 int smiapp_write (struct smiapp_sensor*,int ,int ) ;

__attribute__((used)) static int smiapp_pll_configure(struct smiapp_sensor *sensor)
{
 struct smiapp_pll *pll = &sensor->pll;
 int rval;

 rval = smiapp_write(
  sensor, SMIAPP_REG_U16_VT_PIX_CLK_DIV, pll->vt.pix_clk_div);
 if (rval < 0)
  return rval;

 rval = smiapp_write(
  sensor, SMIAPP_REG_U16_VT_SYS_CLK_DIV, pll->vt.sys_clk_div);
 if (rval < 0)
  return rval;

 rval = smiapp_write(
  sensor, SMIAPP_REG_U16_PRE_PLL_CLK_DIV, pll->pre_pll_clk_div);
 if (rval < 0)
  return rval;

 rval = smiapp_write(
  sensor, SMIAPP_REG_U16_PLL_MULTIPLIER, pll->pll_multiplier);
 if (rval < 0)
  return rval;


 rval = smiapp_write(
  sensor, SMIAPP_REG_U32_REQUESTED_LINK_BIT_RATE_MBPS,
  DIV_ROUND_UP(pll->op.sys_clk_freq_hz, 1000000 / 256 / 256));
 if (rval < 0 || sensor->minfo.smiapp_profile == SMIAPP_PROFILE_0)
  return rval;

 rval = smiapp_write(
  sensor, SMIAPP_REG_U16_OP_PIX_CLK_DIV, pll->op.pix_clk_div);
 if (rval < 0)
  return rval;

 return smiapp_write(
  sensor, SMIAPP_REG_U16_OP_SYS_CLK_DIV, pll->op.sys_clk_div);
}
