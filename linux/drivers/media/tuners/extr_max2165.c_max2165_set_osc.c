
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max2165_priv {int dummy; } ;


 int REG_PLL_CFG ;
 int max2165_mask_write_reg (struct max2165_priv*,int ,int,int) ;

__attribute__((used)) static int max2165_set_osc(struct max2165_priv *priv, u8 osc )
{
 u8 v;

 v = (osc / 2);
 if (v == 2)
  v = 0x7;
 else
  v -= 8;

 max2165_mask_write_reg(priv, REG_PLL_CFG, 0x07, v);

 return 0;
}
