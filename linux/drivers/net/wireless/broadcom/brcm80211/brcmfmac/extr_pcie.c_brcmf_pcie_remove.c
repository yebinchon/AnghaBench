
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {struct brcmf_pciedev_info* pcie; } ;
struct brcmf_pciedev_info {scalar_t__ settings; scalar_t__ ci; struct brcmf_pciedev_info* msgbuf; struct brcmf_pciedev_info* flowrings; TYPE_1__ bus_priv; int state; struct brcmf_pciedev_info* devinfo; } ;
struct brcmf_bus {scalar_t__ settings; scalar_t__ ci; struct brcmf_bus* msgbuf; struct brcmf_bus* flowrings; TYPE_1__ bus_priv; int state; struct brcmf_bus* devinfo; } ;


 int BRCMFMAC_PCIE_STATE_DOWN ;
 int PCIE ;
 int brcmf_chip_detach (scalar_t__) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_detach (int *) ;
 int brcmf_free (int *) ;
 int brcmf_pcie_intr_disable (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_release_irq (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_release_resource (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_release_ringbuffers (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_release_scratchbuffers (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_reset_device (struct brcmf_pciedev_info*) ;
 int brcmf_release_module_param (scalar_t__) ;
 struct brcmf_pciedev_info* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct brcmf_pciedev_info*) ;

__attribute__((used)) static void
brcmf_pcie_remove(struct pci_dev *pdev)
{
 struct brcmf_pciedev_info *devinfo;
 struct brcmf_bus *bus;

 brcmf_dbg(PCIE, "Enter\n");

 bus = dev_get_drvdata(&pdev->dev);
 if (bus == ((void*)0))
  return;

 devinfo = bus->bus_priv.pcie->devinfo;

 devinfo->state = BRCMFMAC_PCIE_STATE_DOWN;
 if (devinfo->ci)
  brcmf_pcie_intr_disable(devinfo);

 brcmf_detach(&pdev->dev);
 brcmf_free(&pdev->dev);

 kfree(bus->bus_priv.pcie);
 kfree(bus->msgbuf->flowrings);
 kfree(bus->msgbuf);
 kfree(bus);

 brcmf_pcie_release_irq(devinfo);
 brcmf_pcie_release_scratchbuffers(devinfo);
 brcmf_pcie_release_ringbuffers(devinfo);
 brcmf_pcie_reset_device(devinfo);
 brcmf_pcie_release_resource(devinfo);

 if (devinfo->ci)
  brcmf_chip_detach(devinfo->ci);
 if (devinfo->settings)
  brcmf_release_module_param(devinfo->settings);

 kfree(devinfo);
 dev_set_drvdata(&pdev->dev, ((void*)0));
}
