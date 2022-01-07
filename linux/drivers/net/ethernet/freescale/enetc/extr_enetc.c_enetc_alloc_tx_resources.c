
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_ndev_priv {int num_tx_rings; int * tx_ring; } ;


 int enetc_alloc_txbdr (int ) ;
 int enetc_free_txbdr (int ) ;

__attribute__((used)) static int enetc_alloc_tx_resources(struct enetc_ndev_priv *priv)
{
 int i, err;

 for (i = 0; i < priv->num_tx_rings; i++) {
  err = enetc_alloc_txbdr(priv->tx_ring[i]);

  if (err)
   goto fail;
 }

 return 0;

fail:
 while (i-- > 0)
  enetc_free_txbdr(priv->tx_ring[i]);

 return err;
}
