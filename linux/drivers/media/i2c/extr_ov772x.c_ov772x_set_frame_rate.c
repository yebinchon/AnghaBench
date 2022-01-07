
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ov772x_win_size {unsigned int sizeimage; } ;
struct ov772x_priv {int regmap; int clk; } ;
struct ov772x_color_format {int com7; } ;
struct TYPE_3__ {unsigned int mult; int com4; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int CLKRC ;
 int CLKRC_DIV (unsigned int) ;
 int CLKRC_RESERVED ;
 int COM4 ;
 int COM4_RESERVED ;
 unsigned int DIV_ROUND_CLOSEST (unsigned long,unsigned int) ;

 int OFMT_MASK ;


 unsigned int abs (unsigned int) ;
 unsigned long clk_get_rate (int ) ;
 TYPE_1__* ov772x_pll ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ov772x_set_frame_rate(struct ov772x_priv *priv,
     unsigned int fps,
     const struct ov772x_color_format *cfmt,
     const struct ov772x_win_size *win)
{
 unsigned long fin = clk_get_rate(priv->clk);
 unsigned int best_diff;
 unsigned int fsize;
 unsigned int pclk;
 unsigned int diff;
 unsigned int i;
 u8 clkrc = 0;
 u8 com4 = 0;
 int ret;


 switch (cfmt->com7 & OFMT_MASK) {
 case 130:
  fsize = win->sizeimage;
  break;
 case 129:
 case 128:
 default:
  fsize = win->sizeimage * 2;
  break;
 }

 pclk = fps * fsize;
 best_diff = ~0L;
 for (i = 0; i < ARRAY_SIZE(ov772x_pll); i++) {
  unsigned int pll_mult = ov772x_pll[i].mult;
  unsigned int pll_out = pll_mult * fin;
  unsigned int t_pclk;
  unsigned int div;

  if (pll_out < pclk)
   continue;

  div = DIV_ROUND_CLOSEST(pll_out, pclk);
  t_pclk = DIV_ROUND_CLOSEST(fin * pll_mult, div);
  diff = abs(pclk - t_pclk);
  if (diff < best_diff) {
   best_diff = diff;
   clkrc = CLKRC_DIV(div);
   com4 = ov772x_pll[i].com4;
  }
 }

 ret = regmap_write(priv->regmap, COM4, com4 | COM4_RESERVED);
 if (ret < 0)
  return ret;

 ret = regmap_write(priv->regmap, CLKRC, clkrc | CLKRC_RESERVED);
 if (ret < 0)
  return ret;

 return 0;
}
