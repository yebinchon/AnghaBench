
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sdio_func {int num; int dev; int device; int vendor; } ;
struct TYPE_4__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_sdio_dev {TYPE_3__* func2; TYPE_2__* func1; TYPE_1__ bus_priv; } ;
struct brcmf_bus {TYPE_3__* func2; TYPE_2__* func1; TYPE_1__ bus_priv; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int dev; } ;


 int SDIO ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_sdiod_intr_unregister (struct brcmf_sdio_dev*) ;
 int brcmf_sdiod_remove (struct brcmf_sdio_dev*) ;
 struct brcmf_sdio_dev* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct brcmf_sdio_dev*) ;

__attribute__((used)) static void brcmf_ops_sdio_remove(struct sdio_func *func)
{
 struct brcmf_bus *bus_if;
 struct brcmf_sdio_dev *sdiodev;

 brcmf_dbg(SDIO, "Enter\n");
 brcmf_dbg(SDIO, "sdio vendor ID: 0x%04x\n", func->vendor);
 brcmf_dbg(SDIO, "sdio device ID: 0x%04x\n", func->device);
 brcmf_dbg(SDIO, "Function: %d\n", func->num);

 bus_if = dev_get_drvdata(&func->dev);
 if (bus_if) {
  sdiodev = bus_if->bus_priv.sdio;


  brcmf_sdiod_intr_unregister(sdiodev);

  if (func->num != 1)
   return;


  brcmf_sdiod_remove(sdiodev);

  dev_set_drvdata(&sdiodev->func1->dev, ((void*)0));
  dev_set_drvdata(&sdiodev->func2->dev, ((void*)0));

  kfree(bus_if);
  kfree(sdiodev);
 }

 brcmf_dbg(SDIO, "Exit\n");
}
