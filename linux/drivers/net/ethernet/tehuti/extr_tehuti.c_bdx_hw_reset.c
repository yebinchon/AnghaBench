
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bdx_priv {scalar_t__ port; } ;


 int CLKPLL_LKD ;
 int CLKPLL_SFTRST ;
 int ENTER ;
 int READ_REG (struct bdx_priv*,int ) ;
 int WRITE_REG (struct bdx_priv*,int ,int) ;
 int mdelay (int) ;
 int pr_err (char*) ;
 int regCLKPLL ;
 int regRXD_CFG0_0 ;
 int udelay (int) ;

__attribute__((used)) static int bdx_hw_reset(struct bdx_priv *priv)
{
 u32 val, i;
 ENTER;

 if (priv->port == 0) {

  val = READ_REG(priv, regCLKPLL);
  WRITE_REG(priv, regCLKPLL, (val | CLKPLL_SFTRST) + 0x8);
  udelay(50);
  val = READ_REG(priv, regCLKPLL);
  WRITE_REG(priv, regCLKPLL, val & ~CLKPLL_SFTRST);
 }

 for (i = 0; i < 70; i++, mdelay(10))
  if ((READ_REG(priv, regCLKPLL) & CLKPLL_LKD) == CLKPLL_LKD) {

   READ_REG(priv, regRXD_CFG0_0);
   return 0;
  }
 pr_err("HW reset failed\n");
 return 1;
}
