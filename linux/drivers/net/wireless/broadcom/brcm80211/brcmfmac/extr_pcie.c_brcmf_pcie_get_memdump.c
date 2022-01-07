
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
struct TYPE_4__ {int rambase; } ;


 int PCIE ;
 int brcmf_dbg (int ,char*,int ,size_t) ;
 int brcmf_pcie_copy_dev_tomem (struct brcmf_pciedev_info*,int ,void*,size_t) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int brcmf_pcie_get_memdump(struct device *dev, void *data, size_t len)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_pciedev *buspub = bus_if->bus_priv.pcie;
 struct brcmf_pciedev_info *devinfo = buspub->devinfo;

 brcmf_dbg(PCIE, "dump at 0x%08X: len=%zu\n", devinfo->ci->rambase, len);
 brcmf_pcie_copy_dev_tomem(devinfo, devinfo->ci->rambase, data, len);
 return 0;
}
