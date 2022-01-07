
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xsdfec_dev {int dev; } ;


 int EIO ;
 int XSDFEC_IDR_ADDR ;
 int XSDFEC_IER_ADDR ;
 int XSDFEC_IMR_ADDR ;
 int XSDFEC_ISR_MASK ;
 int dev_dbg (int ,char*) ;
 int xsdfec_regread (struct xsdfec_dev*,int ) ;
 int xsdfec_regwrite (struct xsdfec_dev*,int ,int) ;

__attribute__((used)) static int xsdfec_isr_enable(struct xsdfec_dev *xsdfec, bool enable)
{
 u32 mask_read;

 if (enable) {

  xsdfec_regwrite(xsdfec, XSDFEC_IER_ADDR, XSDFEC_ISR_MASK);
  mask_read = xsdfec_regread(xsdfec, XSDFEC_IMR_ADDR);
  if (mask_read & XSDFEC_ISR_MASK) {
   dev_dbg(xsdfec->dev,
    "SDFEC enabling irq with IER failed");
   return -EIO;
  }
 } else {

  xsdfec_regwrite(xsdfec, XSDFEC_IDR_ADDR, XSDFEC_ISR_MASK);
  mask_read = xsdfec_regread(xsdfec, XSDFEC_IMR_ADDR);
  if ((mask_read & XSDFEC_ISR_MASK) != XSDFEC_ISR_MASK) {
   dev_dbg(xsdfec->dev,
    "SDFEC disabling irq with IDR failed");
   return -EIO;
  }
 }
 return 0;
}
