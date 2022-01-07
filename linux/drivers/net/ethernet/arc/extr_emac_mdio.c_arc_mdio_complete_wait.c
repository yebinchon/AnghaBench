
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_emac_priv {int dummy; } ;


 int ARC_MDIO_COMPLETE_POLL_COUNT ;
 int ETIMEDOUT ;
 unsigned int MDIO_MASK ;
 int R_STATUS ;
 unsigned int arc_reg_get (struct arc_emac_priv*,int ) ;
 int arc_reg_set (struct arc_emac_priv*,int ,unsigned int) ;
 int msleep (int) ;

__attribute__((used)) static int arc_mdio_complete_wait(struct arc_emac_priv *priv)
{
 unsigned int i;

 for (i = 0; i < ARC_MDIO_COMPLETE_POLL_COUNT * 40; i++) {
  unsigned int status = arc_reg_get(priv, R_STATUS);

  status &= MDIO_MASK;

  if (status) {

   arc_reg_set(priv, R_STATUS, status);
   return 0;
  }

  msleep(25);
 }

 return -ETIMEDOUT;
}
