
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_emac_priv {int txbd_dirty; int txbd_curr; } ;


 int TX_BD_NUM ;

__attribute__((used)) static inline int arc_emac_tx_avail(struct arc_emac_priv *priv)
{
 return (priv->txbd_dirty + TX_BD_NUM - priv->txbd_curr - 1) % TX_BD_NUM;
}
