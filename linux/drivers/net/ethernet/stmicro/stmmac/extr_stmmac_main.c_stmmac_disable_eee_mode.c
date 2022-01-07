
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int tx_path_in_lpi_mode; int eee_ctrl_timer; int hw; } ;


 int del_timer_sync (int *) ;
 int stmmac_reset_eee_mode (struct stmmac_priv*,int ) ;

void stmmac_disable_eee_mode(struct stmmac_priv *priv)
{
 stmmac_reset_eee_mode(priv, priv->hw);
 del_timer_sync(&priv->eee_ctrl_timer);
 priv->tx_path_in_lpi_mode = 0;
}
