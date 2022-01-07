
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int cir_irq; int cir_addr; } ;


 int CR_CIR_IRQ_RSRC ;
 int CR_MULTIFUNC_PIN_SEL ;
 int CR_OUTPUT_PIN_SEL ;
 int LOGICAL_DEV_CIR ;
 int MULTIFUNC_ENABLE_CIR ;
 int MULTIFUNC_ENABLE_CIRWB ;
 int MULTIFUNC_PIN_SEL_MASK ;
 int OUTPUT_ENABLE_CIR ;
 int OUTPUT_ENABLE_CIRWB ;
 int OUTPUT_PIN_SEL_MASK ;
 scalar_t__ is_w83667hg (struct nvt_dev*) ;
 int nvt_cr_read (struct nvt_dev*,int) ;
 int nvt_cr_write (struct nvt_dev*,int,int) ;
 int nvt_dbg (char*,int ,int) ;
 int nvt_select_logical_dev (struct nvt_dev*,int ) ;
 int nvt_set_ioaddr (struct nvt_dev*,int *) ;

__attribute__((used)) static void nvt_cir_ldev_init(struct nvt_dev *nvt)
{
 u8 val, psreg, psmask, psval;

 if (is_w83667hg(nvt)) {
  psreg = CR_MULTIFUNC_PIN_SEL;
  psmask = MULTIFUNC_PIN_SEL_MASK;
  psval = MULTIFUNC_ENABLE_CIR | MULTIFUNC_ENABLE_CIRWB;
 } else {
  psreg = CR_OUTPUT_PIN_SEL;
  psmask = OUTPUT_PIN_SEL_MASK;
  psval = OUTPUT_ENABLE_CIR | OUTPUT_ENABLE_CIRWB;
 }


 val = nvt_cr_read(nvt, psreg);
 val &= psmask;
 val |= psval;
 nvt_cr_write(nvt, val, psreg);


 nvt_select_logical_dev(nvt, LOGICAL_DEV_CIR);

 nvt_set_ioaddr(nvt, &nvt->cir_addr);

 nvt_cr_write(nvt, nvt->cir_irq, CR_CIR_IRQ_RSRC);

 nvt_dbg("CIR initialized, base io port address: 0x%lx, irq: %d",
  nvt->cir_addr, nvt->cir_irq);
}
