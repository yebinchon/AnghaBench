
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dummy; } ;


 int stmmac_display_rx_rings (struct stmmac_priv*) ;
 int stmmac_display_tx_rings (struct stmmac_priv*) ;

__attribute__((used)) static void stmmac_display_rings(struct stmmac_priv *priv)
{

 stmmac_display_rx_rings(priv);


 stmmac_display_tx_rings(priv);
}
