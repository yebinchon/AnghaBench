
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int state; int dev; } ;


 int STMMAC_DOWN ;
 int STMMAC_RESETING ;
 int STMMAC_RESET_REQUESTED ;
 int clear_bit (int ,int *) ;
 int dev_close (int ) ;
 int dev_open (int ,int *) ;
 int netdev_err (int ,char*) ;
 int netif_trans_update (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int *) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void stmmac_reset_subtask(struct stmmac_priv *priv)
{
 if (!test_and_clear_bit(STMMAC_RESET_REQUESTED, &priv->state))
  return;
 if (test_bit(STMMAC_DOWN, &priv->state))
  return;

 netdev_err(priv->dev, "Reset adapter.\n");

 rtnl_lock();
 netif_trans_update(priv->dev);
 while (test_and_set_bit(STMMAC_RESETING, &priv->state))
  usleep_range(1000, 2000);

 set_bit(STMMAC_DOWN, &priv->state);
 dev_close(priv->dev);
 dev_open(priv->dev, ((void*)0));
 clear_bit(STMMAC_DOWN, &priv->state);
 clear_bit(STMMAC_RESETING, &priv->state);
 rtnl_unlock();
}
