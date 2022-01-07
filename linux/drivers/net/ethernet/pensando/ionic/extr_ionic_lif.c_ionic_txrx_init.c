
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ionic_lif {unsigned int nxqs; TYPE_2__* rxqcqs; TYPE_1__* txqcqs; TYPE_3__* netdev; } ;
struct TYPE_6__ {int features; } ;
struct TYPE_5__ {int qcq; } ;
struct TYPE_4__ {int qcq; } ;


 int NETIF_F_RXHASH ;
 int ionic_lif_qcq_deinit (struct ionic_lif*,int ) ;
 int ionic_lif_rss_init (struct ionic_lif*) ;
 int ionic_lif_rxq_init (struct ionic_lif*,int ) ;
 int ionic_lif_txq_init (struct ionic_lif*,int ) ;
 int ionic_set_rx_mode (TYPE_3__*) ;

__attribute__((used)) static int ionic_txrx_init(struct ionic_lif *lif)
{
 unsigned int i;
 int err;

 for (i = 0; i < lif->nxqs; i++) {
  err = ionic_lif_txq_init(lif, lif->txqcqs[i].qcq);
  if (err)
   goto err_out;

  err = ionic_lif_rxq_init(lif, lif->rxqcqs[i].qcq);
  if (err) {
   ionic_lif_qcq_deinit(lif, lif->txqcqs[i].qcq);
   goto err_out;
  }
 }

 if (lif->netdev->features & NETIF_F_RXHASH)
  ionic_lif_rss_init(lif);

 ionic_set_rx_mode(lif->netdev);

 return 0;

err_out:
 while (i--) {
  ionic_lif_qcq_deinit(lif, lif->txqcqs[i].qcq);
  ionic_lif_qcq_deinit(lif, lif->rxqcqs[i].qcq);
 }

 return err;
}
