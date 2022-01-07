
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct brcmf_pciedev_info {int wowl_enabled; } ;
struct brcmf_pciedev {struct brcmf_pciedev_info* devinfo; } ;
struct TYPE_2__ {struct brcmf_pciedev* pcie; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;


 int PCIE ;
 int brcmf_dbg (int ,char*,int) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void brcmf_pcie_wowl_config(struct device *dev, bool enabled)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_pciedev *buspub = bus_if->bus_priv.pcie;
 struct brcmf_pciedev_info *devinfo = buspub->devinfo;

 brcmf_dbg(PCIE, "Configuring WOWL, enabled=%d\n", enabled);
 devinfo->wowl_enabled = enabled;
}
