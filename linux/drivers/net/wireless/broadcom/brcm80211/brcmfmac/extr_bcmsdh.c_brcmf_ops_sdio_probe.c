
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct sdio_func {int num; struct device dev; TYPE_1__* card; int device; int vendor; int class; } ;
struct sdio_device_id {int dummy; } ;
struct TYPE_5__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_sdio_dev {TYPE_3__* func1; struct device* dev; int proto_type; TYPE_2__ bus_priv; struct brcmf_sdio_dev* bus_if; struct sdio_func* func2; } ;
struct brcmf_bus {TYPE_3__* func1; struct device* dev; int proto_type; TYPE_2__ bus_priv; struct brcmf_bus* bus_if; struct sdio_func* func2; } ;
struct TYPE_6__ {struct device dev; } ;
struct TYPE_4__ {TYPE_3__** sdio_func; int quirks; } ;


 int BRCMF_PROTO_BCDC ;
 int BRCMF_SDIOD_DOWN ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MMC_QUIRK_LENIENT_FN0 ;
 int SDIO ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_err (char*,int) ;
 int brcmf_sdiod_acpi_set_power_manageable (struct device*,int ) ;
 int brcmf_sdiod_change_state (struct brcmf_sdio_dev*,int ) ;
 int brcmf_sdiod_probe (struct brcmf_sdio_dev*) ;
 int dev_set_drvdata (struct device*,struct brcmf_sdio_dev*) ;
 int kfree (struct brcmf_sdio_dev*) ;
 struct brcmf_sdio_dev* kzalloc (int,int ) ;

__attribute__((used)) static int brcmf_ops_sdio_probe(struct sdio_func *func,
    const struct sdio_device_id *id)
{
 int err;
 struct brcmf_sdio_dev *sdiodev;
 struct brcmf_bus *bus_if;
 struct device *dev;

 brcmf_dbg(SDIO, "Enter\n");
 brcmf_dbg(SDIO, "Class=%x\n", func->class);
 brcmf_dbg(SDIO, "sdio vendor ID: 0x%04x\n", func->vendor);
 brcmf_dbg(SDIO, "sdio device ID: 0x%04x\n", func->device);
 brcmf_dbg(SDIO, "Function#: %d\n", func->num);

 dev = &func->dev;


 func->card->quirks |= MMC_QUIRK_LENIENT_FN0;


 brcmf_sdiod_acpi_set_power_manageable(dev, 0);


 if (func->num == 1)
  return 0;


 if (func->num != 2)
  return -ENODEV;

 bus_if = kzalloc(sizeof(struct brcmf_bus), GFP_KERNEL);
 if (!bus_if)
  return -ENOMEM;
 sdiodev = kzalloc(sizeof(struct brcmf_sdio_dev), GFP_KERNEL);
 if (!sdiodev) {
  kfree(bus_if);
  return -ENOMEM;
 }




 sdiodev->func1 = func->card->sdio_func[0];
 sdiodev->func2 = func;

 sdiodev->bus_if = bus_if;
 bus_if->bus_priv.sdio = sdiodev;
 bus_if->proto_type = BRCMF_PROTO_BCDC;
 dev_set_drvdata(&func->dev, bus_if);
 dev_set_drvdata(&sdiodev->func1->dev, bus_if);
 sdiodev->dev = &sdiodev->func1->dev;

 brcmf_sdiod_change_state(sdiodev, BRCMF_SDIOD_DOWN);

 brcmf_dbg(SDIO, "F2 found, calling brcmf_sdiod_probe...\n");
 err = brcmf_sdiod_probe(sdiodev);
 if (err) {
  brcmf_err("F2 error, probe failed %d...\n", err);
  goto fail;
 }

 brcmf_dbg(SDIO, "F2 init completed...\n");
 return 0;

fail:
 dev_set_drvdata(&func->dev, ((void*)0));
 dev_set_drvdata(&sdiodev->func1->dev, ((void*)0));
 kfree(sdiodev);
 kfree(bus_if);
 return err;
}
