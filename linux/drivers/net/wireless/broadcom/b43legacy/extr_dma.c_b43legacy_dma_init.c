
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43legacy_dma {struct b43legacy_dmaring* tx_ring0; struct b43legacy_dmaring* tx_ring1; struct b43legacy_dmaring* tx_ring2; struct b43legacy_dmaring* tx_ring3; struct b43legacy_dmaring* tx_ring4; struct b43legacy_dmaring* tx_ring5; struct b43legacy_dmaring* rx_ring0; struct b43legacy_dmaring* rx_ring3; int translation; } ;
struct b43legacy_wldev {int __using_pio; int wl; TYPE_2__* dev; struct b43legacy_dma dma; } ;
struct b43legacy_dmaring {int dummy; } ;
typedef enum b43legacy_dmatype { ____Placeholder_b43legacy_dmatype } b43legacy_dmatype ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; int dma_dev; } ;


 int DMA_BIT_MASK (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int b43legacy_destroy_dmaring (struct b43legacy_dmaring*) ;
 int b43legacy_engine_type (struct b43legacy_wldev*) ;
 struct b43legacy_dmaring* b43legacy_setup_dmaring (struct b43legacy_wldev*,int,int,int) ;
 int b43legacydbg (int ,char*,unsigned int) ;
 int b43legacyerr (int ,char*) ;
 int b43legacywarn (int ,char*) ;
 int dma_set_mask_and_coherent (int ,int ) ;
 int ssb_dma_translation (TYPE_2__*) ;

int b43legacy_dma_init(struct b43legacy_wldev *dev)
{
 struct b43legacy_dma *dma = &dev->dma;
 struct b43legacy_dmaring *ring;
 enum b43legacy_dmatype type = b43legacy_engine_type(dev);
 int err;

 err = dma_set_mask_and_coherent(dev->dev->dma_dev, DMA_BIT_MASK(type));
 if (err) {






  b43legacyerr(dev->wl, "DMA for this device not supported and "
         "no PIO support compiled in\n");
  return -EOPNOTSUPP;

 }
 dma->translation = ssb_dma_translation(dev->dev);

 err = -ENOMEM;

 ring = b43legacy_setup_dmaring(dev, 0, 1, type);
 if (!ring)
  goto out;
 dma->tx_ring0 = ring;

 ring = b43legacy_setup_dmaring(dev, 1, 1, type);
 if (!ring)
  goto err_destroy_tx0;
 dma->tx_ring1 = ring;

 ring = b43legacy_setup_dmaring(dev, 2, 1, type);
 if (!ring)
  goto err_destroy_tx1;
 dma->tx_ring2 = ring;

 ring = b43legacy_setup_dmaring(dev, 3, 1, type);
 if (!ring)
  goto err_destroy_tx2;
 dma->tx_ring3 = ring;

 ring = b43legacy_setup_dmaring(dev, 4, 1, type);
 if (!ring)
  goto err_destroy_tx3;
 dma->tx_ring4 = ring;

 ring = b43legacy_setup_dmaring(dev, 5, 1, type);
 if (!ring)
  goto err_destroy_tx4;
 dma->tx_ring5 = ring;


 ring = b43legacy_setup_dmaring(dev, 0, 0, type);
 if (!ring)
  goto err_destroy_tx5;
 dma->rx_ring0 = ring;

 if (dev->dev->id.revision < 5) {
  ring = b43legacy_setup_dmaring(dev, 3, 0, type);
  if (!ring)
   goto err_destroy_rx0;
  dma->rx_ring3 = ring;
 }

 b43legacydbg(dev->wl, "%u-bit DMA initialized\n", (unsigned int)type);
 err = 0;
out:
 return err;

err_destroy_rx0:
 b43legacy_destroy_dmaring(dma->rx_ring0);
 dma->rx_ring0 = ((void*)0);
err_destroy_tx5:
 b43legacy_destroy_dmaring(dma->tx_ring5);
 dma->tx_ring5 = ((void*)0);
err_destroy_tx4:
 b43legacy_destroy_dmaring(dma->tx_ring4);
 dma->tx_ring4 = ((void*)0);
err_destroy_tx3:
 b43legacy_destroy_dmaring(dma->tx_ring3);
 dma->tx_ring3 = ((void*)0);
err_destroy_tx2:
 b43legacy_destroy_dmaring(dma->tx_ring2);
 dma->tx_ring2 = ((void*)0);
err_destroy_tx1:
 b43legacy_destroy_dmaring(dma->tx_ring1);
 dma->tx_ring1 = ((void*)0);
err_destroy_tx0:
 b43legacy_destroy_dmaring(dma->tx_ring0);
 dma->tx_ring0 = ((void*)0);
 goto out;
}
