
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct stmmac_priv {TYPE_1__* plat; } ;
struct TYPE_2__ {unsigned long clk_ref_rate; int stmmac_clk; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static u32 stmmac_usec2riwt(u32 usec, struct stmmac_priv *priv)
{
 unsigned long clk = clk_get_rate(priv->plat->stmmac_clk);

 if (!clk) {
  clk = priv->plat->clk_ref_rate;
  if (!clk)
   return 0;
 }

 return (usec * (clk / 1000000)) / 256;
}
