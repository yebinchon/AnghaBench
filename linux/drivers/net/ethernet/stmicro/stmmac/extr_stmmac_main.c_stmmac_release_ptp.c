
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* plat; } ;
struct TYPE_2__ {scalar_t__ clk_ptp_ref; } ;


 int clk_disable_unprepare (scalar_t__) ;
 int stmmac_ptp_unregister (struct stmmac_priv*) ;

__attribute__((used)) static void stmmac_release_ptp(struct stmmac_priv *priv)
{
 if (priv->plat->clk_ptp_ref)
  clk_disable_unprepare(priv->plat->clk_ptp_ref);
 stmmac_ptp_unregister(priv);
}
