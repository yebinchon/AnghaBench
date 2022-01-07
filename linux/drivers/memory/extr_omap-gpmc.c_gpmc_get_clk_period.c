
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum gpmc_clk_domain { ____Placeholder_gpmc_clk_domain } gpmc_clk_domain ;




 int GPMC_CS_CONFIG1 ;
 int gpmc_cs_read_reg (int,int ) ;
 unsigned long gpmc_get_fclk_period () ;

__attribute__((used)) static unsigned long gpmc_get_clk_period(int cs, enum gpmc_clk_domain cd)
{

 unsigned long tick_ps = gpmc_get_fclk_period();
 u32 l;
 int div;

 switch (cd) {
 case 129:

  l = gpmc_cs_read_reg(cs, GPMC_CS_CONFIG1);
  div = (l & 0x03) + 1;

  tick_ps *= div;
  break;
 case 128:

 default:
  break;
 }

 return tick_ps;

}
