
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int dummy; } ;


 int CIR_CC ;
 int CIR_CP ;
 int CIR_FCCH ;
 int CIR_FCCL ;
 int CIR_FIFOCON ;
 int CIR_IRCON ;
 int CIR_IREN ;
 int CIR_IRFIFOSTS ;
 int CIR_IRFSM ;
 int CIR_IRSTS ;
 int CIR_RXFCONT ;
 int CIR_SLCH ;
 int CIR_SLCL ;
 int CIR_SRXFIFO ;
 int CIR_STXFIFO ;
 int CIR_TXFCONT ;
 int CR_CIR_BASE_ADDR_HI ;
 int CR_CIR_BASE_ADDR_LO ;
 int CR_CIR_IRQ_RSRC ;
 int CR_LOGICAL_DEV_EN ;
 int LOGICAL_DEV_CIR ;
 int NVT_DRIVER_NAME ;
 int nvt_cir_reg_read (struct nvt_dev*,int ) ;
 int nvt_cr_read (struct nvt_dev*,int ) ;
 int nvt_efm_disable (struct nvt_dev*) ;
 int nvt_efm_enable (struct nvt_dev*) ;
 int nvt_select_logical_dev (struct nvt_dev*,int ) ;
 int pr_info (char*,int) ;

__attribute__((used)) static void cir_dump_regs(struct nvt_dev *nvt)
{
 nvt_efm_enable(nvt);
 nvt_select_logical_dev(nvt, LOGICAL_DEV_CIR);

 pr_info("%s: Dump CIR logical device registers:\n", NVT_DRIVER_NAME);
 pr_info(" * CR CIR ACTIVE :   0x%x\n",
  nvt_cr_read(nvt, CR_LOGICAL_DEV_EN));
 pr_info(" * CR CIR BASE ADDR: 0x%x\n",
  (nvt_cr_read(nvt, CR_CIR_BASE_ADDR_HI) << 8) |
  nvt_cr_read(nvt, CR_CIR_BASE_ADDR_LO));
 pr_info(" * CR CIR IRQ NUM:   0x%x\n",
  nvt_cr_read(nvt, CR_CIR_IRQ_RSRC));

 nvt_efm_disable(nvt);

 pr_info("%s: Dump CIR registers:\n", NVT_DRIVER_NAME);
 pr_info(" * IRCON:     0x%x\n", nvt_cir_reg_read(nvt, CIR_IRCON));
 pr_info(" * IRSTS:     0x%x\n", nvt_cir_reg_read(nvt, CIR_IRSTS));
 pr_info(" * IREN:      0x%x\n", nvt_cir_reg_read(nvt, CIR_IREN));
 pr_info(" * RXFCONT:   0x%x\n", nvt_cir_reg_read(nvt, CIR_RXFCONT));
 pr_info(" * CP:        0x%x\n", nvt_cir_reg_read(nvt, CIR_CP));
 pr_info(" * CC:        0x%x\n", nvt_cir_reg_read(nvt, CIR_CC));
 pr_info(" * SLCH:      0x%x\n", nvt_cir_reg_read(nvt, CIR_SLCH));
 pr_info(" * SLCL:      0x%x\n", nvt_cir_reg_read(nvt, CIR_SLCL));
 pr_info(" * FIFOCON:   0x%x\n", nvt_cir_reg_read(nvt, CIR_FIFOCON));
 pr_info(" * IRFIFOSTS: 0x%x\n", nvt_cir_reg_read(nvt, CIR_IRFIFOSTS));
 pr_info(" * SRXFIFO:   0x%x\n", nvt_cir_reg_read(nvt, CIR_SRXFIFO));
 pr_info(" * TXFCONT:   0x%x\n", nvt_cir_reg_read(nvt, CIR_TXFCONT));
 pr_info(" * STXFIFO:   0x%x\n", nvt_cir_reg_read(nvt, CIR_STXFIFO));
 pr_info(" * FCCH:      0x%x\n", nvt_cir_reg_read(nvt, CIR_FCCH));
 pr_info(" * FCCL:      0x%x\n", nvt_cir_reg_read(nvt, CIR_FCCL));
 pr_info(" * IRFSM:     0x%x\n", nvt_cir_reg_read(nvt, CIR_IRFSM));
}
