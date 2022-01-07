
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktq {int dummy; } ;
struct device {int dummy; } ;
struct brcmf_sdio_dev {struct brcmf_sdio* bus; } ;
struct brcmf_sdio {struct pktq txq; } ;
struct TYPE_2__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;


 struct brcmf_bus* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct pktq *brcmf_sdio_bus_gettxq(struct device *dev)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
 struct brcmf_sdio *bus = sdiodev->bus;

 return &bus->txq;
}
