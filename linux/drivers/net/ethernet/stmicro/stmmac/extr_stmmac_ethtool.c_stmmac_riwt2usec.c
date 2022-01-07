
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {TYPE_1__* plat; } ;
struct TYPE_2__ {unsigned long clk_ref_rate; int stmmac_clk; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static u32 stmmac_riwt2usec(u32 riwt, struct stmmac_priv *priv)
{
 unsigned long clk = clk_get_rate(priv->plat->stmmac_clk);

 if (!clk) {
  clk = priv->plat->clk_ref_rate;
  if (!clk)
   return 0;
 }

 return (riwt * 256) / (clk / 1000000);
}
