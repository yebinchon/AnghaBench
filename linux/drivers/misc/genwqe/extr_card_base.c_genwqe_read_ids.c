
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ is_virtfn; int dev; } ;
struct genwqe_dev {scalar_t__ slu_unitcfg; scalar_t__ app_unitcfg; int is_privileged; int app_name; struct pci_dev* pci_dev; } ;


 int EIO ;
 int ENOENT ;
 int GENWQE_SLU_ARCH_REQ ;
 int IO_APP_UNITCFG ;
 scalar_t__ IO_ILLEGAL_VALUE ;
 int IO_SLU_BITSTREAM ;
 int IO_SLU_UNITCFG ;
 scalar_t__ __genwqe_readq (struct genwqe_dev*,int ) ;
 int dev_err (int *,char*,int) ;
 int genwqe_get_slu_id (struct genwqe_dev*) ;
 int genwqe_read_app_id (struct genwqe_dev*,int ,int) ;

__attribute__((used)) static int genwqe_read_ids(struct genwqe_dev *cd)
{
 int err = 0;
 int slu_id;
 struct pci_dev *pci_dev = cd->pci_dev;

 cd->slu_unitcfg = __genwqe_readq(cd, IO_SLU_UNITCFG);
 if (cd->slu_unitcfg == IO_ILLEGAL_VALUE) {
  dev_err(&pci_dev->dev,
   "err: SLUID=%016llx\n", cd->slu_unitcfg);
  err = -EIO;
  goto out_err;
 }

 slu_id = genwqe_get_slu_id(cd);
 if (slu_id < GENWQE_SLU_ARCH_REQ || slu_id == 0xff) {
  dev_err(&pci_dev->dev,
   "err: incompatible SLU Architecture %u\n", slu_id);
  err = -ENOENT;
  goto out_err;
 }

 cd->app_unitcfg = __genwqe_readq(cd, IO_APP_UNITCFG);
 if (cd->app_unitcfg == IO_ILLEGAL_VALUE) {
  dev_err(&pci_dev->dev,
   "err: APPID=%016llx\n", cd->app_unitcfg);
  err = -EIO;
  goto out_err;
 }
 genwqe_read_app_id(cd, cd->app_name, sizeof(cd->app_name));
 if (pci_dev->is_virtfn)
  cd->is_privileged = 0;
 else
  cd->is_privileged = (__genwqe_readq(cd, IO_SLU_BITSTREAM)
         != IO_ILLEGAL_VALUE);

 out_err:
 return err;
}
