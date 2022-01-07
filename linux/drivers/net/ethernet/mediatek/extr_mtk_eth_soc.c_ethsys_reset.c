
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {int ethsys; } ;


 int ETHSYS_RSTCTRL ;
 int mdelay (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ethsys_reset(struct mtk_eth *eth, u32 reset_bits)
{
 regmap_update_bits(eth->ethsys, ETHSYS_RSTCTRL,
      reset_bits,
      reset_bits);

 usleep_range(1000, 1100);
 regmap_update_bits(eth->ethsys, ETHSYS_RSTCTRL,
      reset_bits,
      ~reset_bits);
 mdelay(10);
}
