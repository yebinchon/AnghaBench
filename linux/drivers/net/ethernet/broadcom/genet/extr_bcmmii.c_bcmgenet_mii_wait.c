
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcmgenet_priv {int wq; } ;


 int HZ ;
 int MDIO_START_BUSY ;
 int UMAC_MDIO_CMD ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,int ) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int bcmgenet_mii_wait(void *wait_func_data)
{
 struct bcmgenet_priv *priv = wait_func_data;

 wait_event_timeout(priv->wq,
      !(bcmgenet_umac_readl(priv, UMAC_MDIO_CMD)
      & MDIO_START_BUSY),
      HZ / 100);
 return 0;
}
