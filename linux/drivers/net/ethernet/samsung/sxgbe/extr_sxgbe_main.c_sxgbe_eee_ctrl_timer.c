
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sxgbe_priv_data {int eee_ctrl_timer; } ;


 int SXGBE_LPI_TIMER (int ) ;
 int eee_ctrl_timer ;
 int eee_timer ;
 struct sxgbe_priv_data* from_timer (int ,struct timer_list*,int ) ;
 int mod_timer (int *,int ) ;
 struct sxgbe_priv_data* priv ;
 int sxgbe_enable_eee_mode (struct sxgbe_priv_data*) ;

__attribute__((used)) static void sxgbe_eee_ctrl_timer(struct timer_list *t)
{
 struct sxgbe_priv_data *priv = from_timer(priv, t, eee_ctrl_timer);

 sxgbe_enable_eee_mode(priv);
 mod_timer(&priv->eee_ctrl_timer, SXGBE_LPI_TIMER(eee_timer));
}
