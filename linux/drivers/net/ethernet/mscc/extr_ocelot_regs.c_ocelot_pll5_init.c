
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot {int * targets; } ;


 size_t HSIO ;
 int HSIO_PLL5G_CFG0 ;
 int HSIO_PLL5G_CFG0_CORE_CLK_DIV (int) ;
 int HSIO_PLL5G_CFG0_CPU_CLK_DIV (int) ;
 int HSIO_PLL5G_CFG0_DIV4 ;
 int HSIO_PLL5G_CFG0_ENA_BIAS ;
 int HSIO_PLL5G_CFG0_ENA_CLKTREE ;
 int HSIO_PLL5G_CFG0_ENA_CP1 ;
 int HSIO_PLL5G_CFG0_ENA_LANE ;
 int HSIO_PLL5G_CFG0_ENA_VCO_BUF ;
 int HSIO_PLL5G_CFG0_LOOP_BW_RES (int) ;
 int HSIO_PLL5G_CFG0_SELBGV820 (int) ;
 int HSIO_PLL5G_CFG0_SELCPI (int) ;
 int HSIO_PLL5G_CFG2 ;
 int HSIO_PLL5G_CFG2_AMPC_SEL (int) ;
 int HSIO_PLL5G_CFG2_ENA_AMPCTRL ;
 int HSIO_PLL5G_CFG2_EN_RESET_FRQ_DET ;
 int HSIO_PLL5G_CFG2_EN_RESET_OVERRUN ;
 int HSIO_PLL5G_CFG2_GAIN_TEST (int) ;
 int HSIO_PLL5G_CFG2_PWD_AMPCTRL_N ;
 int HSIO_PLL5G_CFG4 ;
 int HSIO_PLL5G_CFG4_IB_BIAS_CTRL (int) ;
 int HSIO_PLL5G_CFG4_IB_CTRL (int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void ocelot_pll5_init(struct ocelot *ocelot)
{



 regmap_write(ocelot->targets[HSIO], HSIO_PLL5G_CFG4,
       HSIO_PLL5G_CFG4_IB_CTRL(0x7600) |
       HSIO_PLL5G_CFG4_IB_BIAS_CTRL(0x8));
 regmap_write(ocelot->targets[HSIO], HSIO_PLL5G_CFG0,
       HSIO_PLL5G_CFG0_CORE_CLK_DIV(0x11) |
       HSIO_PLL5G_CFG0_CPU_CLK_DIV(2) |
       HSIO_PLL5G_CFG0_ENA_BIAS |
       HSIO_PLL5G_CFG0_ENA_VCO_BUF |
       HSIO_PLL5G_CFG0_ENA_CP1 |
       HSIO_PLL5G_CFG0_SELCPI(2) |
       HSIO_PLL5G_CFG0_LOOP_BW_RES(0xe) |
       HSIO_PLL5G_CFG0_SELBGV820(4) |
       HSIO_PLL5G_CFG0_DIV4 |
       HSIO_PLL5G_CFG0_ENA_CLKTREE |
       HSIO_PLL5G_CFG0_ENA_LANE);
 regmap_write(ocelot->targets[HSIO], HSIO_PLL5G_CFG2,
       HSIO_PLL5G_CFG2_EN_RESET_FRQ_DET |
       HSIO_PLL5G_CFG2_EN_RESET_OVERRUN |
       HSIO_PLL5G_CFG2_GAIN_TEST(0x8) |
       HSIO_PLL5G_CFG2_ENA_AMPCTRL |
       HSIO_PLL5G_CFG2_PWD_AMPCTRL_N |
       HSIO_PLL5G_CFG2_AMPC_SEL(0x10));
}
