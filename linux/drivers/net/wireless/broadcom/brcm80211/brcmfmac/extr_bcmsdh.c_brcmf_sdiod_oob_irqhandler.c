
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_sdio_dev {int irq_en; int bus; } ;
struct TYPE_2__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;
typedef int irqreturn_t ;


 int INTR ;
 int IRQ_HANDLED ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_sdio_isr (int ) ;
 struct brcmf_bus* dev_get_drvdata (void*) ;
 int disable_irq_nosync (int) ;

__attribute__((used)) static irqreturn_t brcmf_sdiod_oob_irqhandler(int irq, void *dev_id)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev_id);
 struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;

 brcmf_dbg(INTR, "OOB intr triggered\n");




 if (sdiodev->irq_en) {
  disable_irq_nosync(irq);
  sdiodev->irq_en = 0;
 }

 brcmf_sdio_isr(sdiodev->bus);

 return IRQ_HANDLED;
}
