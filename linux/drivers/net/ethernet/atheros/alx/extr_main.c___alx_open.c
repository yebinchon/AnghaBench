
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pdev; } ;
struct alx_priv {TYPE_1__ hw; int dev; int num_rxq; int num_txq; } ;


 int ALX_ISR ;
 scalar_t__ ALX_ISR_DIS ;
 int alx_alloc_napis (struct alx_priv*) ;
 int alx_alloc_rings (struct alx_priv*) ;
 int alx_configure (struct alx_priv*) ;
 int alx_enable_msix (struct alx_priv*) ;
 int alx_free_napis (struct alx_priv*) ;
 int alx_free_rings (struct alx_priv*) ;
 int alx_init_intr (struct alx_priv*) ;
 int alx_irq_enable (struct alx_priv*) ;
 int alx_reinit_rings (struct alx_priv*) ;
 int alx_request_irq (struct alx_priv*) ;
 int alx_schedule_link_check (struct alx_priv*) ;
 int alx_write_mem32 (TYPE_1__*,int ,int ) ;
 int netif_carrier_off (int ) ;
 int netif_set_real_num_rx_queues (int ,int ) ;
 int netif_set_real_num_tx_queues (int ,int ) ;
 int netif_tx_start_all_queues (int ) ;
 int pci_free_irq_vectors (int ) ;

__attribute__((used)) static int __alx_open(struct alx_priv *alx, bool resume)
{
 int err;

 err = alx_enable_msix(alx);
 if (err < 0) {
  err = alx_init_intr(alx);
  if (err)
   return err;
 }

 if (!resume)
  netif_carrier_off(alx->dev);

 err = alx_alloc_napis(alx);
 if (err)
  goto out_disable_adv_intr;

 err = alx_alloc_rings(alx);
 if (err)
  goto out_free_rings;

 alx_configure(alx);

 err = alx_request_irq(alx);
 if (err)
  goto out_free_rings;





 alx_reinit_rings(alx);

 netif_set_real_num_tx_queues(alx->dev, alx->num_txq);
 netif_set_real_num_rx_queues(alx->dev, alx->num_rxq);


 alx_write_mem32(&alx->hw, ALX_ISR, ~(u32)ALX_ISR_DIS);

 alx_irq_enable(alx);

 if (!resume)
  netif_tx_start_all_queues(alx->dev);

 alx_schedule_link_check(alx);
 return 0;

out_free_rings:
 alx_free_rings(alx);
 alx_free_napis(alx);
out_disable_adv_intr:
 pci_free_irq_vectors(alx->hw.pdev);
 return err;
}
