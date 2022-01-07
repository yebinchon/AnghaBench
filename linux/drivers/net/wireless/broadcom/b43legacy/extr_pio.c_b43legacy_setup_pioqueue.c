
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43legacy_wldev {int wl; TYPE_2__* dev; } ;
struct b43legacy_pioqueue {int need_workarounds; scalar_t__ tx_devq_size; scalar_t__ mmio_base; int txtask; int txrunning; int txqueue; int txfree; struct b43legacy_wldev* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int B43legacy_MACCTL_BE ;
 int B43legacy_MMIO_MACCTL ;
 scalar_t__ B43legacy_PIO_TXQADJUST ;
 scalar_t__ B43legacy_PIO_TXQBUFSIZE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ b43legacy_read16 (struct b43legacy_wldev*,scalar_t__) ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int ) ;
 int b43legacyerr (int ,char*,...) ;
 int kfree (struct b43legacy_pioqueue*) ;
 struct b43legacy_pioqueue* kzalloc (int,int ) ;
 int setup_txqueues (struct b43legacy_pioqueue*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tx_tasklet ;

__attribute__((used)) static
struct b43legacy_pioqueue *b43legacy_setup_pioqueue(struct b43legacy_wldev *dev,
          u16 pio_mmio_base)
{
 struct b43legacy_pioqueue *queue;
 u32 value;
 u16 qsize;

 queue = kzalloc(sizeof(*queue), GFP_KERNEL);
 if (!queue)
  goto out;

 queue->dev = dev;
 queue->mmio_base = pio_mmio_base;
 queue->need_workarounds = (dev->dev->id.revision < 3);

 INIT_LIST_HEAD(&queue->txfree);
 INIT_LIST_HEAD(&queue->txqueue);
 INIT_LIST_HEAD(&queue->txrunning);
 tasklet_init(&queue->txtask, tx_tasklet,
       (unsigned long)queue);

 value = b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
 value &= ~B43legacy_MACCTL_BE;
 b43legacy_write32(dev, B43legacy_MMIO_MACCTL, value);

 qsize = b43legacy_read16(dev, queue->mmio_base
     + B43legacy_PIO_TXQBUFSIZE);
 if (qsize == 0) {
  b43legacyerr(dev->wl, "This card does not support PIO "
         "operation mode. Please use DMA mode "
         "(module parameter pio=0).\n");
  goto err_freequeue;
 }
 if (qsize <= B43legacy_PIO_TXQADJUST) {
  b43legacyerr(dev->wl, "PIO tx device-queue too small (%u)\n",
         qsize);
  goto err_freequeue;
 }
 qsize -= B43legacy_PIO_TXQADJUST;
 queue->tx_devq_size = qsize;

 setup_txqueues(queue);

out:
 return queue;

err_freequeue:
 kfree(queue);
 queue = ((void*)0);
 goto out;
}
