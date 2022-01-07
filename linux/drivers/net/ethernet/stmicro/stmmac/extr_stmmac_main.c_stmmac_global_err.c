
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int state; int dev; } ;


 int STMMAC_RESET_REQUESTED ;
 int netif_carrier_off (int ) ;
 int set_bit (int ,int *) ;
 int stmmac_service_event_schedule (struct stmmac_priv*) ;

__attribute__((used)) static void stmmac_global_err(struct stmmac_priv *priv)
{
 netif_carrier_off(priv->dev);
 set_bit(STMMAC_RESET_REQUESTED, &priv->state);
 stmmac_service_event_schedule(priv);
}
