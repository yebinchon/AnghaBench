
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; int irq; } ;
struct denali_controller {int clk_rate; int clk_x_rate; int nbanks; void* reg; void* host; int * dev; int * ecc_caps; int irq; } ;
struct TYPE_4__ {int options; } ;
struct TYPE_5__ {TYPE_1__ ecc; } ;
struct denali_chip {int nsels; TYPE_3__* sels; TYPE_2__ chip; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_6__ {int bank; } ;


 int DENALI_NAND_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ INTEL_CE4100 ;
 int NAND_ECC_MAXIMIZE ;
 int denali_chip_init (struct denali_controller*,struct denali_chip*) ;
 int denali_init (struct denali_controller*) ;
 int denali_pci_ecc_caps ;
 int denali_remove (struct denali_controller*) ;
 int dev_err (int *,char*) ;
 void* devm_kzalloc (int *,int,int ) ;
 void* ioremap_nocache (scalar_t__,unsigned long) ;
 int iounmap (void*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 unsigned long pci_resource_len (struct pci_dev*,int) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct denali_controller*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int sels ;
 int struct_size (struct denali_chip*,int ,int) ;

__attribute__((used)) static int denali_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 resource_size_t csr_base, mem_base;
 unsigned long csr_len, mem_len;
 struct denali_controller *denali;
 struct denali_chip *dchip;
 int nsels, ret, i;

 denali = devm_kzalloc(&dev->dev, sizeof(*denali), GFP_KERNEL);
 if (!denali)
  return -ENOMEM;

 ret = pcim_enable_device(dev);
 if (ret) {
  dev_err(&dev->dev, "Spectra: pci_enable_device failed.\n");
  return ret;
 }

 if (id->driver_data == INTEL_CE4100) {
  mem_base = pci_resource_start(dev, 0);
  mem_len = pci_resource_len(dev, 1);
  csr_base = pci_resource_start(dev, 1);
  csr_len = pci_resource_len(dev, 1);
 } else {
  csr_base = pci_resource_start(dev, 0);
  csr_len = pci_resource_len(dev, 0);
  mem_base = pci_resource_start(dev, 1);
  mem_len = pci_resource_len(dev, 1);
  if (!mem_len) {
   mem_base = csr_base + csr_len;
   mem_len = csr_len;
  }
 }

 pci_set_master(dev);
 denali->dev = &dev->dev;
 denali->irq = dev->irq;
 denali->ecc_caps = &denali_pci_ecc_caps;
 denali->clk_rate = 50000000;
 denali->clk_x_rate = 200000000;

 ret = pci_request_regions(dev, DENALI_NAND_NAME);
 if (ret) {
  dev_err(&dev->dev, "Spectra: Unable to request memory regions\n");
  return ret;
 }

 denali->reg = ioremap_nocache(csr_base, csr_len);
 if (!denali->reg) {
  dev_err(&dev->dev, "Spectra: Unable to remap memory region\n");
  return -ENOMEM;
 }

 denali->host = ioremap_nocache(mem_base, mem_len);
 if (!denali->host) {
  dev_err(&dev->dev, "Spectra: ioremap_nocache failed!");
  ret = -ENOMEM;
  goto out_unmap_reg;
 }

 ret = denali_init(denali);
 if (ret)
  goto out_unmap_host;

 nsels = denali->nbanks;

 dchip = devm_kzalloc(denali->dev, struct_size(dchip, sels, nsels),
        GFP_KERNEL);
 if (!dchip) {
  ret = -ENOMEM;
  goto out_remove_denali;
 }

 dchip->chip.ecc.options |= NAND_ECC_MAXIMIZE;

 dchip->nsels = nsels;

 for (i = 0; i < nsels; i++)
  dchip->sels[i].bank = i;

 ret = denali_chip_init(denali, dchip);
 if (ret)
  goto out_remove_denali;

 pci_set_drvdata(dev, denali);

 return 0;

out_remove_denali:
 denali_remove(denali);
out_unmap_host:
 iounmap(denali->host);
out_unmap_reg:
 iounmap(denali->reg);
 return ret;
}
