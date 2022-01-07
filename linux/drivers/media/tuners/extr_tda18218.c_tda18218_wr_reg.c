
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda18218_priv {int dummy; } ;


 int tda18218_wr_regs (struct tda18218_priv*,int ,int *,int) ;

__attribute__((used)) static int tda18218_wr_reg(struct tda18218_priv *priv, u8 reg, u8 val)
{
 return tda18218_wr_regs(priv, reg, &val, 1);
}
