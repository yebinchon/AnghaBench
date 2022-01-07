
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct genwqe_dev {int slu_unitcfg; int app_unitcfg; struct pci_dev* pci_dev; } ;


 int IO_APP_ERR_ACT_MASK ;
 int IO_APP_SEC_LEM_DEBUG_OVR ;
 int __genwqe_writeq (struct genwqe_dev*,int ,int) ;
 int dev_warn (int *,char*,int,int ) ;

__attribute__((used)) static void genwqe_tweak_hardware(struct genwqe_dev *cd)
{
 struct pci_dev *pci_dev = cd->pci_dev;


 if (((cd->slu_unitcfg & 0xFFFF0ull) >= 0x32000ull) &&
     ((cd->slu_unitcfg & 0xFFFF0ull) <= 0x33250ull)) {
  dev_warn(&pci_dev->dev,
    "FIRs masked due to bitstream %016llx.%016llx\n",
    cd->slu_unitcfg, cd->app_unitcfg);

  __genwqe_writeq(cd, IO_APP_SEC_LEM_DEBUG_OVR,
    0xFFFFFFFFFFFFFFFFull);

  __genwqe_writeq(cd, IO_APP_ERR_ACT_MASK,
    0x0000000000000000ull);
 }
}
