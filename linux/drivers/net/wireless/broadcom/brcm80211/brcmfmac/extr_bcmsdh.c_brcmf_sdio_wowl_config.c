
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct brcmf_sdio_dev {int wowl_enabled; } ;
struct TYPE_2__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;


 int SDIO ;
 int brcmf_dbg (int ,char*,int) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;

void brcmf_sdio_wowl_config(struct device *dev, bool enabled)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;

 brcmf_dbg(SDIO, "Configuring WOWL, enabled=%d\n", enabled);
 sdiodev->wowl_enabled = enabled;
}
