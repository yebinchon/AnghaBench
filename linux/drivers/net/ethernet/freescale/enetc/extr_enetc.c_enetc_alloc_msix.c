
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct enetc_ndev_priv {int bdr_int_num; int num_tx_rings; struct enetc_int_vector** int_vector; struct enetc_bdr** rx_ring; int rx_bd_count; int dev; int ndev; struct enetc_bdr** tx_ring; int tx_bd_count; TYPE_1__* si; } ;
struct enetc_bdr {int index; int bd_count; int dev; int ndev; } ;
struct enetc_int_vector {int count_tx_rings; int napi; struct enetc_bdr rx_ring; struct enetc_bdr* tx_ring; int tx_rings_map; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int ENETC_BDR_INT_BASE_IDX ;
 int ENETC_MAX_BDR_INT ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int NAPI_POLL_WEIGHT ;
 int PCI_IRQ_MSIX ;
 int __set_bit (int,int *) ;
 int enetc_poll ;
 int kfree (struct enetc_int_vector*) ;
 struct enetc_int_vector* kzalloc (int,int ) ;
 int netif_napi_add (int ,int *,int ,int ) ;
 int netif_napi_del (int *) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_free_irq_vectors (struct pci_dev*) ;

int enetc_alloc_msix(struct enetc_ndev_priv *priv)
{
 struct pci_dev *pdev = priv->si->pdev;
 int size, v_tx_rings;
 int i, n, err, nvec;

 nvec = ENETC_BDR_INT_BASE_IDX + priv->bdr_int_num;

 n = pci_alloc_irq_vectors(pdev, nvec, nvec, PCI_IRQ_MSIX);

 if (n < 0)
  return n;

 if (n != nvec)
  return -EPERM;


 v_tx_rings = priv->num_tx_rings / priv->bdr_int_num;
 size = sizeof(struct enetc_int_vector) +
        sizeof(struct enetc_bdr) * v_tx_rings;

 for (i = 0; i < priv->bdr_int_num; i++) {
  struct enetc_int_vector *v;
  struct enetc_bdr *bdr;
  int j;

  v = kzalloc(size, GFP_KERNEL);
  if (!v) {
   err = -ENOMEM;
   goto fail;
  }

  priv->int_vector[i] = v;

  netif_napi_add(priv->ndev, &v->napi, enetc_poll,
          NAPI_POLL_WEIGHT);
  v->count_tx_rings = v_tx_rings;

  for (j = 0; j < v_tx_rings; j++) {
   int idx;


   if (priv->bdr_int_num == ENETC_MAX_BDR_INT)
    idx = 2 * j + i;
   else
    idx = j + i * v_tx_rings;

   __set_bit(idx, &v->tx_rings_map);
   bdr = &v->tx_ring[j];
   bdr->index = idx;
   bdr->ndev = priv->ndev;
   bdr->dev = priv->dev;
   bdr->bd_count = priv->tx_bd_count;
   priv->tx_ring[idx] = bdr;
  }

  bdr = &v->rx_ring;
  bdr->index = i;
  bdr->ndev = priv->ndev;
  bdr->dev = priv->dev;
  bdr->bd_count = priv->rx_bd_count;
  priv->rx_ring[i] = bdr;
 }

 return 0;

fail:
 while (i--) {
  netif_napi_del(&priv->int_vector[i]->napi);
  kfree(priv->int_vector[i]);
 }

 pci_free_irq_vectors(pdev);

 return err;
}
