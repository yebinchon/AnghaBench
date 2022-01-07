
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct brcmf_sdio_dev {int irq_en; int irq_en_lock; TYPE_3__* settings; scalar_t__ oob_irq_requested; } ;
struct brcmf_sdio {int ipend; struct brcmf_sdio_dev* sdiodev; } ;
struct TYPE_4__ {int oob_irq_nr; } ;
struct TYPE_5__ {TYPE_1__ sdio; } ;
struct TYPE_6__ {TYPE_2__ bus; } ;


 int atomic_read (int *) ;
 int enable_irq (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void brcmf_sdio_clrintr(struct brcmf_sdio *bus)
{
 struct brcmf_sdio_dev *sdiodev;
 unsigned long flags;

 sdiodev = bus->sdiodev;
 if (sdiodev->oob_irq_requested) {
  spin_lock_irqsave(&sdiodev->irq_en_lock, flags);
  if (!sdiodev->irq_en && !atomic_read(&bus->ipend)) {
   enable_irq(sdiodev->settings->bus.sdio.oob_irq_nr);
   sdiodev->irq_en = 1;
  }
  spin_unlock_irqrestore(&sdiodev->irq_en_lock, flags);
 }
}
