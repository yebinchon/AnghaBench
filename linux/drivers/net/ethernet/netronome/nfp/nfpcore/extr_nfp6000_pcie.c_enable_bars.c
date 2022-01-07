
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct resource {int dummy; } ;
struct nfp_bar {int index; int * iomem; scalar_t__ bitsize; int refcnt; scalar_t__ base; scalar_t__ mask; struct nfp6000_pcie* nfp; scalar_t__ barcfg; struct resource* resource; } ;
struct TYPE_8__ {int ** expl; int * em; int * csr; } ;
struct TYPE_6__ {int master_id; int signal_ref; TYPE_1__* group; int * data; int mutex; } ;
struct nfp6000_pcie {int bars; struct nfp_bar* bar; int dev; TYPE_4__ iomem; TYPE_2__ expl; TYPE_3__* pdev; } ;
typedef int status_msg ;
struct TYPE_7__ {int device; int devfn; struct resource* resource; } ;
struct TYPE_5__ {int* free; int * addr; scalar_t__ bitsize; } ;


 int ARRAY_SIZE (struct nfp_bar*) ;
 int EINVAL ;
 int IORESOURCE_MEM ;
 int NFP_CPP_INTERFACE_UNIT_of (int ) ;
 int NFP_CPP_TARGET_ISLAND_XPB ;
 int NFP_PCIE_BAR (int) ;
 int const NFP_PCIE_BAR_PCIE2CPP_LengthSelect_32BIT ;
 int const NFP_PCIE_BAR_PCIE2CPP_MapType (int ) ;
 int NFP_PCIE_BAR_PCIE2CPP_MapType_BULK ;
 int NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT0 ;
 int NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT1 ;
 int NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT2 ;
 int NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT3 ;
 int NFP_PCIE_BAR_PCIE2CPP_MapType_GENERAL ;
 int const NFP_PCIE_BAR_PCIE2CPP_Target_BaseAddress (int ) ;
 int NFP_PCIE_EM ;
 int NFP_PCIE_EXPLICIT_BARS ;
 int NFP_PCIE_SRAM ;
 scalar_t__ NFP_PCI_MIN_MAP_SIZE ;




 int atomic_inc (int *) ;
 int bar_cmp ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,char*,int,int) ;
 scalar_t__ fls (scalar_t__) ;
 void* ioremap_nocache (int ,scalar_t__) ;
 int iounmap (int *) ;
 int mutex_init (int *) ;
 int nfp6000_bar_write (struct nfp6000_pcie*,struct nfp_bar*,int const) ;
 scalar_t__ nfp_bar_resource_len (struct nfp_bar*) ;
 int nfp_bar_resource_start (struct nfp_bar*) ;
 int resource_type (struct resource*) ;
 int snprintf (char*,int,char*,...) ;
 int sort (struct nfp_bar*,int,int,int ,int *) ;

__attribute__((used)) static int enable_bars(struct nfp6000_pcie *nfp, u16 interface)
{
 const u32 barcfg_msix_general =
  NFP_PCIE_BAR_PCIE2CPP_MapType(
   NFP_PCIE_BAR_PCIE2CPP_MapType_GENERAL) |
  NFP_PCIE_BAR_PCIE2CPP_LengthSelect_32BIT;
 const u32 barcfg_msix_xpb =
  NFP_PCIE_BAR_PCIE2CPP_MapType(
   NFP_PCIE_BAR_PCIE2CPP_MapType_BULK) |
  NFP_PCIE_BAR_PCIE2CPP_LengthSelect_32BIT |
  NFP_PCIE_BAR_PCIE2CPP_Target_BaseAddress(
   NFP_CPP_TARGET_ISLAND_XPB);
 const u32 barcfg_explicit[4] = {
  NFP_PCIE_BAR_PCIE2CPP_MapType(
   NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT0),
  NFP_PCIE_BAR_PCIE2CPP_MapType(
   NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT1),
  NFP_PCIE_BAR_PCIE2CPP_MapType(
   NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT2),
  NFP_PCIE_BAR_PCIE2CPP_MapType(
   NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT3),
 };
 char status_msg[196] = {};
 int i, err, bars_free;
 struct nfp_bar *bar;
 int expl_groups;
 char *msg, *end;

 msg = status_msg +
  snprintf(status_msg, sizeof(status_msg) - 1, "RESERVED BARs: ");
 end = status_msg + sizeof(status_msg) - 1;

 bar = &nfp->bar[0];
 for (i = 0; i < ARRAY_SIZE(nfp->bar); i++, bar++) {
  struct resource *res;

  res = &nfp->pdev->resource[(i >> 3) * 2];


  if (!(resource_type(res) & IORESOURCE_MEM)) {
   bar--;
   continue;
  }

  bar->resource = res;
  bar->barcfg = 0;

  bar->nfp = nfp;
  bar->index = i;
  bar->mask = nfp_bar_resource_len(bar) - 1;
  bar->bitsize = fls(bar->mask);
  bar->base = 0;
  bar->iomem = ((void*)0);
 }

 nfp->bars = bar - &nfp->bar[0];
 if (nfp->bars < 8) {
  dev_err(nfp->dev, "No usable BARs found!\n");
  return -EINVAL;
 }

 bars_free = nfp->bars;



 mutex_init(&nfp->expl.mutex);

 nfp->expl.master_id = ((NFP_CPP_INTERFACE_UNIT_of(interface) & 3) + 4)
  << 4;
 nfp->expl.signal_ref = 0x10;


 bar = &nfp->bar[0];
 if (nfp_bar_resource_len(bar) >= NFP_PCI_MIN_MAP_SIZE)
  bar->iomem = ioremap_nocache(nfp_bar_resource_start(bar),
          nfp_bar_resource_len(bar));
 if (bar->iomem) {
  int pf;

  msg += snprintf(msg, end - msg, "0.0: General/MSI-X SRAM, ");
  atomic_inc(&bar->refcnt);
  bars_free--;

  nfp6000_bar_write(nfp, bar, barcfg_msix_general);

  nfp->expl.data = bar->iomem + NFP_PCIE_SRAM + 0x1000;

  switch (nfp->pdev->device) {
  case 131:
   pf = nfp->pdev->devfn & 7;
   nfp->iomem.csr = bar->iomem + NFP_PCIE_BAR(pf);
   break;
  case 130:
  case 129:
  case 128:
   nfp->iomem.csr = bar->iomem + NFP_PCIE_BAR(0);
   break;
  default:
   dev_err(nfp->dev, "Unsupported device ID: %04hx!\n",
    nfp->pdev->device);
   err = -EINVAL;
   goto err_unmap_bar0;
  }
  nfp->iomem.em = bar->iomem + NFP_PCIE_EM;
 }

 switch (nfp->pdev->device) {
 case 131:
  expl_groups = 1;
  break;
 case 130:
 case 129:
 case 128:
  expl_groups = 4;
  break;
 default:
  dev_err(nfp->dev, "Unsupported device ID: %04hx!\n",
   nfp->pdev->device);
  err = -EINVAL;
  goto err_unmap_bar0;
 }


 bar = &nfp->bar[1];
 msg += snprintf(msg, end - msg, "0.1: PCIe XPB/MSI-X PBA, ");
 atomic_inc(&bar->refcnt);
 bars_free--;

 nfp6000_bar_write(nfp, bar, barcfg_msix_xpb);


 for (i = 0; i < 4; i++) {
  int j;

  if (i >= NFP_PCIE_EXPLICIT_BARS || i >= expl_groups) {
   nfp->expl.group[i].bitsize = 0;
   continue;
  }

  bar = &nfp->bar[4 + i];
  bar->iomem = ioremap_nocache(nfp_bar_resource_start(bar),
          nfp_bar_resource_len(bar));
  if (bar->iomem) {
   msg += snprintf(msg, end - msg,
     "0.%d: Explicit%d, ", 4 + i, i);
   atomic_inc(&bar->refcnt);
   bars_free--;

   nfp->expl.group[i].bitsize = bar->bitsize;
   nfp->expl.group[i].addr = bar->iomem;
   nfp6000_bar_write(nfp, bar, barcfg_explicit[i]);

   for (j = 0; j < 4; j++)
    nfp->expl.group[i].free[j] = 1;
  }
  nfp->iomem.expl[i] = bar->iomem;
 }


 sort(&nfp->bar[0], nfp->bars, sizeof(nfp->bar[0]),
      bar_cmp, ((void*)0));

 dev_info(nfp->dev, "%sfree: %d/%d\n", status_msg, bars_free, nfp->bars);

 return 0;

err_unmap_bar0:
 if (nfp->bar[0].iomem)
  iounmap(nfp->bar[0].iomem);
 return err;
}
