
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ virt; } ;
struct vr_nor_mtd {scalar_t__ csr_base; TYPE_1__ map; int info; struct pci_dev* dev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int DRV_NAME ;
 int ENOMEM ;
 scalar_t__ EXP_TIMING_CS0 ;
 int GFP_KERNEL ;
 unsigned int TIMING_WR_EN ;
 int iounmap (scalar_t__) ;
 int kfree (struct vr_nor_mtd*) ;
 struct vr_nor_mtd* kzalloc (int,int ) ;
 int map_destroy (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct vr_nor_mtd*) ;
 unsigned int readl (scalar_t__) ;
 int vr_nor_init_maps (struct vr_nor_mtd*) ;
 int vr_nor_init_partitions (struct vr_nor_mtd*) ;
 int vr_nor_mtd_setup (struct vr_nor_mtd*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int vr_nor_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct vr_nor_mtd *p = ((void*)0);
 unsigned int exp_timing_cs0;
 int err;

 err = pci_enable_device(dev);
 if (err)
  goto out;

 err = pci_request_regions(dev, DRV_NAME);
 if (err)
  goto disable_dev;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 err = -ENOMEM;
 if (!p)
  goto release;

 p->dev = dev;

 err = vr_nor_init_maps(p);
 if (err)
  goto release;

 err = vr_nor_mtd_setup(p);
 if (err)
  goto destroy_maps;

 err = vr_nor_init_partitions(p);
 if (err)
  goto destroy_mtd_setup;

 pci_set_drvdata(dev, p);

 return 0;

      destroy_mtd_setup:
 map_destroy(p->info);

      destroy_maps:

 exp_timing_cs0 = readl(p->csr_base + EXP_TIMING_CS0);
 exp_timing_cs0 &= ~TIMING_WR_EN;
 writel(exp_timing_cs0, p->csr_base + EXP_TIMING_CS0);


 iounmap(p->map.virt);


 iounmap(p->csr_base);

      release:
 kfree(p);
 pci_release_regions(dev);

      disable_dev:
 pci_disable_device(dev);

      out:
 return err;
}
