
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_ao_cec_g12a_dualdiv_clk {int regmap; } ;
struct clk_hw {int dummy; } ;


 int CECB_CLK_CNTL_BYPASS_EN ;
 int CECB_CLK_CNTL_DUAL_EN ;
 int CECB_CLK_CNTL_INPUT_EN ;
 int CECB_CLK_CNTL_M1 ;
 int CECB_CLK_CNTL_M2 ;
 int CECB_CLK_CNTL_N1 ;
 int CECB_CLK_CNTL_N2 ;
 int CECB_CLK_CNTL_OUTPUT_EN ;
 int CECB_CLK_CNTL_REG0 ;
 int CECB_CLK_CNTL_REG1 ;
 int FIELD_PREP (int,int) ;
 struct meson_ao_cec_g12a_dualdiv_clk* hw_to_meson_ao_cec_g12a_dualdiv_clk (struct clk_hw*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int meson_ao_cec_g12a_dualdiv_clk_enable(struct clk_hw *hw)
{
 struct meson_ao_cec_g12a_dualdiv_clk *dualdiv_clk =
  hw_to_meson_ao_cec_g12a_dualdiv_clk(hw);



 regmap_update_bits(dualdiv_clk->regmap, CECB_CLK_CNTL_REG0,
      CECB_CLK_CNTL_INPUT_EN | CECB_CLK_CNTL_OUTPUT_EN,
      0);


 regmap_update_bits(dualdiv_clk->regmap, CECB_CLK_CNTL_REG0,
      CECB_CLK_CNTL_N1,
      FIELD_PREP(CECB_CLK_CNTL_N1, 733 - 1));

 regmap_update_bits(dualdiv_clk->regmap, CECB_CLK_CNTL_REG0,
      CECB_CLK_CNTL_N2,
      FIELD_PREP(CECB_CLK_CNTL_N2, 732 - 1));


 regmap_update_bits(dualdiv_clk->regmap, CECB_CLK_CNTL_REG1,
      CECB_CLK_CNTL_M1,
      FIELD_PREP(CECB_CLK_CNTL_M1, 8 - 1));

 regmap_update_bits(dualdiv_clk->regmap, CECB_CLK_CNTL_REG1,
      CECB_CLK_CNTL_M2,
      FIELD_PREP(CECB_CLK_CNTL_M2, 11 - 1));


 regmap_update_bits(dualdiv_clk->regmap, CECB_CLK_CNTL_REG0,
      CECB_CLK_CNTL_DUAL_EN, CECB_CLK_CNTL_DUAL_EN);


 regmap_update_bits(dualdiv_clk->regmap, CECB_CLK_CNTL_REG1,
      CECB_CLK_CNTL_BYPASS_EN, 0);


 regmap_update_bits(dualdiv_clk->regmap, CECB_CLK_CNTL_REG0,
      CECB_CLK_CNTL_INPUT_EN | CECB_CLK_CNTL_OUTPUT_EN,
      CECB_CLK_CNTL_INPUT_EN | CECB_CLK_CNTL_OUTPUT_EN);

 return 0;
}
