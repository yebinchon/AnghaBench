
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int device; int vendor; int dev; } ;
struct TYPE_6__ {struct brcmf_pciedev_info* pcie; } ;
struct brcmf_pciedev_info {scalar_t__ settings; TYPE_2__* ci; struct brcmf_pciedev_info* msgbuf; int * dev; struct pci_dev* pdev; int wowl_supported; int coreid; int chip; int proto_type; int * ops; TYPE_1__ bus_priv; struct brcmf_pciedev_info* bus; struct brcmf_pciedev_info* devinfo; } ;
struct brcmf_pciedev {scalar_t__ settings; TYPE_2__* ci; struct brcmf_pciedev* msgbuf; int * dev; struct pci_dev* pdev; int wowl_supported; int coreid; int chip; int proto_type; int * ops; TYPE_1__ bus_priv; struct brcmf_pciedev* bus; struct brcmf_pciedev* devinfo; } ;
struct brcmf_fw_request {scalar_t__ settings; TYPE_2__* ci; struct brcmf_fw_request* msgbuf; int * dev; struct pci_dev* pdev; int wowl_supported; int coreid; int chip; int proto_type; int * ops; TYPE_1__ bus_priv; struct brcmf_fw_request* bus; struct brcmf_fw_request* devinfo; } ;
struct brcmf_bus {scalar_t__ settings; TYPE_2__* ci; struct brcmf_bus* msgbuf; int * dev; struct pci_dev* pdev; int wowl_supported; int coreid; int chip; int proto_type; int * ops; TYPE_1__ bus_priv; struct brcmf_bus* bus; struct brcmf_bus* devinfo; } ;
struct TYPE_7__ {int chiprev; int chip; } ;


 int BRCMF_BUSTYPE_PCIE ;
 int BRCMF_PROTO_MSGBUF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PCIE ;
 int PCI_D3hot ;
 int PTR_ERR (TYPE_2__*) ;
 int brcmf_alloc (int *,scalar_t__) ;
 TYPE_2__* brcmf_chip_attach (struct brcmf_pciedev_info*,int *) ;
 int brcmf_chip_detach (TYPE_2__*) ;
 int brcmf_dbg (int ,char*,int ,int ) ;
 int brcmf_err (int *,char*,int ,int ) ;
 int brcmf_fw_get_firmwares (int *,struct brcmf_pciedev_info*,int ) ;
 scalar_t__ brcmf_get_module_param (int *,int ,int ,int ) ;
 int brcmf_pcie_bus_ops ;
 int brcmf_pcie_buscore_ops ;
 struct brcmf_pciedev_info* brcmf_pcie_prepare_fw_request (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_release_resource (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_setup ;
 int brcmf_release_module_param (scalar_t__) ;
 int dev_set_drvdata (int *,struct brcmf_pciedev_info*) ;
 int kfree (struct brcmf_pciedev_info*) ;
 void* kzalloc (int,int ) ;
 int pci_pme_capable (struct pci_dev*,int ) ;

__attribute__((used)) static int
brcmf_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 int ret;
 struct brcmf_fw_request *fwreq;
 struct brcmf_pciedev_info *devinfo;
 struct brcmf_pciedev *pcie_bus_dev;
 struct brcmf_bus *bus;

 brcmf_dbg(PCIE, "Enter %x:%x\n", pdev->vendor, pdev->device);

 ret = -ENOMEM;
 devinfo = kzalloc(sizeof(*devinfo), GFP_KERNEL);
 if (devinfo == ((void*)0))
  return ret;

 devinfo->pdev = pdev;
 pcie_bus_dev = ((void*)0);
 devinfo->ci = brcmf_chip_attach(devinfo, &brcmf_pcie_buscore_ops);
 if (IS_ERR(devinfo->ci)) {
  ret = PTR_ERR(devinfo->ci);
  devinfo->ci = ((void*)0);
  goto fail;
 }

 pcie_bus_dev = kzalloc(sizeof(*pcie_bus_dev), GFP_KERNEL);
 if (pcie_bus_dev == ((void*)0)) {
  ret = -ENOMEM;
  goto fail;
 }

 devinfo->settings = brcmf_get_module_param(&devinfo->pdev->dev,
         BRCMF_BUSTYPE_PCIE,
         devinfo->ci->chip,
         devinfo->ci->chiprev);
 if (!devinfo->settings) {
  ret = -ENOMEM;
  goto fail;
 }

 bus = kzalloc(sizeof(*bus), GFP_KERNEL);
 if (!bus) {
  ret = -ENOMEM;
  goto fail;
 }
 bus->msgbuf = kzalloc(sizeof(*bus->msgbuf), GFP_KERNEL);
 if (!bus->msgbuf) {
  ret = -ENOMEM;
  kfree(bus);
  goto fail;
 }


 pcie_bus_dev->devinfo = devinfo;
 pcie_bus_dev->bus = bus;
 bus->dev = &pdev->dev;
 bus->bus_priv.pcie = pcie_bus_dev;
 bus->ops = &brcmf_pcie_bus_ops;
 bus->proto_type = BRCMF_PROTO_MSGBUF;
 bus->chip = devinfo->coreid;
 bus->wowl_supported = pci_pme_capable(pdev, PCI_D3hot);
 dev_set_drvdata(&pdev->dev, bus);

 ret = brcmf_alloc(&devinfo->pdev->dev, devinfo->settings);
 if (ret)
  goto fail_bus;

 fwreq = brcmf_pcie_prepare_fw_request(devinfo);
 if (!fwreq) {
  ret = -ENOMEM;
  goto fail_bus;
 }

 ret = brcmf_fw_get_firmwares(bus->dev, fwreq, brcmf_pcie_setup);
 if (ret < 0) {
  kfree(fwreq);
  goto fail_bus;
 }
 return 0;

fail_bus:
 kfree(bus->msgbuf);
 kfree(bus);
fail:
 brcmf_err(((void*)0), "failed %x:%x\n", pdev->vendor, pdev->device);
 brcmf_pcie_release_resource(devinfo);
 if (devinfo->ci)
  brcmf_chip_detach(devinfo->ci);
 if (devinfo->settings)
  brcmf_release_module_param(devinfo->settings);
 kfree(pcie_bus_dev);
 kfree(devinfo);
 return ret;
}
