
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dummy; } ;


 int stmmac_dwmac_mode_quirk (struct stmmac_priv*) ;

__attribute__((used)) static int stmmac_dwmac4_quirks(struct stmmac_priv *priv)
{
 stmmac_dwmac_mode_quirk(priv);
 return 0;
}
