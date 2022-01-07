
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enetc_ndev_priv {int bdr_int_num; int num_rx_rings; int num_tx_rings; TYPE_1__* si; struct enetc_int_vector** int_vector; int ** tx_ring; int ** rx_ring; } ;
struct enetc_int_vector {int napi; } ;
struct TYPE_2__ {int pdev; } ;


 int kfree (struct enetc_int_vector*) ;
 int netif_napi_del (int *) ;
 int pci_free_irq_vectors (int ) ;

void enetc_free_msix(struct enetc_ndev_priv *priv)
{
 int i;

 for (i = 0; i < priv->bdr_int_num; i++) {
  struct enetc_int_vector *v = priv->int_vector[i];

  netif_napi_del(&v->napi);
 }

 for (i = 0; i < priv->num_rx_rings; i++)
  priv->rx_ring[i] = ((void*)0);

 for (i = 0; i < priv->num_tx_rings; i++)
  priv->tx_ring[i] = ((void*)0);

 for (i = 0; i < priv->bdr_int_num; i++) {
  kfree(priv->int_vector[i]);
  priv->int_vector[i] = ((void*)0);
 }


 pci_free_irq_vectors(priv->si->pdev);
}
