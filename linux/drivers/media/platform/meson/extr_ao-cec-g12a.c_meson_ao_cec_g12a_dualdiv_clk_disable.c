
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_ao_cec_g12a_dualdiv_clk {int regmap; } ;
struct clk_hw {int dummy; } ;


 int CECB_CLK_CNTL_INPUT_EN ;
 int CECB_CLK_CNTL_OUTPUT_EN ;
 int CECB_CLK_CNTL_REG0 ;
 struct meson_ao_cec_g12a_dualdiv_clk* hw_to_meson_ao_cec_g12a_dualdiv_clk (struct clk_hw*) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static void meson_ao_cec_g12a_dualdiv_clk_disable(struct clk_hw *hw)
{
 struct meson_ao_cec_g12a_dualdiv_clk *dualdiv_clk =
  hw_to_meson_ao_cec_g12a_dualdiv_clk(hw);

 regmap_update_bits(dualdiv_clk->regmap, CECB_CLK_CNTL_REG0,
      CECB_CLK_CNTL_INPUT_EN | CECB_CLK_CNTL_OUTPUT_EN,
      0);
}
