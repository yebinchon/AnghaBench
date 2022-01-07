
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dev; } ;
struct genwqe_dev {struct pci_dev* pci_dev; } ;


 int GENWQE_MAX_UNITS ;
 int GFIR_ERR_TRIGGER ;
 int IO_ILLEGAL_VALUE ;
 int IO_SLC_CFGREG_GFIR ;
 int __genwqe_readq (struct genwqe_dev*,int) ;
 int __genwqe_writeq (struct genwqe_dev*,int,int) ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_err (int *,char*,int,...) ;

__attribute__((used)) static u64 genwqe_fir_checking(struct genwqe_dev *cd)
{
 int j, iterations = 0;
 u64 mask, fir, fec, uid, gfir, gfir_masked, sfir, sfec;
 u32 fir_addr, fir_clr_addr, fec_addr, sfir_addr, sfec_addr;
 struct pci_dev *pci_dev = cd->pci_dev;

 healthMonitor:
 iterations++;
 if (iterations > 16) {
  dev_err(&pci_dev->dev, "* exit looping after %d times\n",
   iterations);
  goto fatal_error;
 }

 gfir = __genwqe_readq(cd, IO_SLC_CFGREG_GFIR);
 if (gfir != 0x0)
  dev_err(&pci_dev->dev, "* 0x%08x 0x%016llx\n",
        IO_SLC_CFGREG_GFIR, gfir);
 if (gfir == IO_ILLEGAL_VALUE)
  goto fatal_error;







 if (gfir == 0)
  return 0;

 gfir_masked = gfir & GFIR_ERR_TRIGGER;

 for (uid = 0; uid < GENWQE_MAX_UNITS; uid++) {


  fir_addr = (uid << 24) + 0x08;
  fir = __genwqe_readq(cd, fir_addr);
  if (fir == 0x0)
   continue;

  dev_err(&pci_dev->dev, "* 0x%08x 0x%016llx\n", fir_addr, fir);
  if (fir == IO_ILLEGAL_VALUE)
   goto fatal_error;


  fec_addr = (uid << 24) + 0x18;
  fec = __genwqe_readq(cd, fec_addr);

  dev_err(&pci_dev->dev, "* 0x%08x 0x%016llx\n", fec_addr, fec);
  if (fec == IO_ILLEGAL_VALUE)
   goto fatal_error;

  for (j = 0, mask = 1ULL; j < 64; j++, mask <<= 1) {


   if ((fir & mask) == 0x0)
    continue;

   sfir_addr = (uid << 24) + 0x100 + 0x08 * j;
   sfir = __genwqe_readq(cd, sfir_addr);

   if (sfir == IO_ILLEGAL_VALUE)
    goto fatal_error;
   dev_err(&pci_dev->dev,
    "* 0x%08x 0x%016llx\n", sfir_addr, sfir);

   sfec_addr = (uid << 24) + 0x300 + 0x08 * j;
   sfec = __genwqe_readq(cd, sfec_addr);

   if (sfec == IO_ILLEGAL_VALUE)
    goto fatal_error;
   dev_err(&pci_dev->dev,
    "* 0x%08x 0x%016llx\n", sfec_addr, sfec);

   gfir = __genwqe_readq(cd, IO_SLC_CFGREG_GFIR);
   if (gfir == IO_ILLEGAL_VALUE)
    goto fatal_error;



   if ((gfir_masked == 0x0) &&
       (gfir & GFIR_ERR_TRIGGER)) {
    goto healthMonitor;
   }


   if (gfir_masked == 0x0) {


    sfir_addr = (uid << 24) + 0x100 + 0x08 * j;
    __genwqe_writeq(cd, sfir_addr, sfir);

    dev_dbg(&pci_dev->dev,
     "[HM] Clearing  2ndary FIR 0x%08x with 0x%016llx\n",
     sfir_addr, sfir);
    fir_clr_addr = (uid << 24) + 0x10;
    __genwqe_writeq(cd, fir_clr_addr, mask);

    dev_dbg(&pci_dev->dev,
     "[HM] Clearing primary FIR 0x%08x with 0x%016llx\n",
     fir_clr_addr, mask);
   }
  }
 }
 gfir = __genwqe_readq(cd, IO_SLC_CFGREG_GFIR);
 if (gfir == IO_ILLEGAL_VALUE)
  goto fatal_error;

 if ((gfir_masked == 0x0) && (gfir & GFIR_ERR_TRIGGER)) {




  dev_dbg(&pci_dev->dev, "ACK! Another FIR! Recursing %d!\n",
   iterations);
  goto healthMonitor;
 }
 return gfir_masked;

 fatal_error:
 return IO_ILLEGAL_VALUE;
}
