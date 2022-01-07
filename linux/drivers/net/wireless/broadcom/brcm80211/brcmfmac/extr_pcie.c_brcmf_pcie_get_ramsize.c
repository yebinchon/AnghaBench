
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct brcmf_pciedev_info {TYPE_2__* ci; } ;
struct brcmf_pciedev {struct brcmf_pciedev_info* devinfo; } ;
struct TYPE_3__ {struct brcmf_pciedev* pcie; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;
struct TYPE_4__ {size_t ramsize; size_t srsize; } ;


 struct brcmf_bus* dev_get_drvdata (struct device*) ;

__attribute__((used)) static size_t brcmf_pcie_get_ramsize(struct device *dev)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_pciedev *buspub = bus_if->bus_priv.pcie;
 struct brcmf_pciedev_info *devinfo = buspub->devinfo;

 return devinfo->ci->ramsize - devinfo->ci->srsize;
}
