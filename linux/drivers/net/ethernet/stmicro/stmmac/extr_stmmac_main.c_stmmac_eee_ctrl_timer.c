
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct stmmac_priv {int eee_ctrl_timer; } ;


 int STMMAC_LPI_T (int ) ;
 int eee_ctrl_timer ;
 int eee_timer ;
 struct stmmac_priv* from_timer (int ,struct timer_list*,int ) ;
 int mod_timer (int *,int ) ;
 struct stmmac_priv* priv ;
 int stmmac_enable_eee_mode (struct stmmac_priv*) ;

__attribute__((used)) static void stmmac_eee_ctrl_timer(struct timer_list *t)
{
 struct stmmac_priv *priv = from_timer(priv, t, eee_ctrl_timer);

 stmmac_enable_eee_mode(priv);
 mod_timer(&priv->eee_ctrl_timer, STMMAC_LPI_T(eee_timer));
}
