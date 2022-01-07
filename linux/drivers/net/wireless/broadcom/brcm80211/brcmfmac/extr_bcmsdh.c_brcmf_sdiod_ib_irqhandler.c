
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {int dev; } ;
struct brcmf_sdio_dev {int bus; } ;
struct TYPE_2__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;


 int INTR ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_sdio_isr (int ) ;
 struct brcmf_bus* dev_get_drvdata (int *) ;

__attribute__((used)) static void brcmf_sdiod_ib_irqhandler(struct sdio_func *func)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(&func->dev);
 struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;

 brcmf_dbg(INTR, "IB intr triggered\n");

 brcmf_sdio_isr(sdiodev->bus);
}
