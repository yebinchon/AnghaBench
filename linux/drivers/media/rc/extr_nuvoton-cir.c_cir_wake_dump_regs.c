
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int dummy; } ;


 int CIR_WAKE_FIFOCON ;
 int CIR_WAKE_FIFO_CMP_DEEP ;
 int CIR_WAKE_FIFO_CMP_TOL ;
 int CIR_WAKE_FIFO_COUNT ;
 int CIR_WAKE_FIFO_IGNORE ;
 int CIR_WAKE_IRCON ;
 int CIR_WAKE_IREN ;
 int CIR_WAKE_IRFSM ;
 int CIR_WAKE_IRSTS ;
 int CIR_WAKE_RD_FIFO_ONLY ;
 int CIR_WAKE_RD_FIFO_ONLY_IDX ;
 int CIR_WAKE_SAMPLE_RX_FIFO ;
 int CIR_WAKE_SLCH ;
 int CIR_WAKE_SLCL ;
 int CIR_WAKE_SRXFSTS ;
 int CIR_WAKE_WR_FIFO_DATA ;
 int CR_CIR_BASE_ADDR_HI ;
 int CR_CIR_BASE_ADDR_LO ;
 int CR_CIR_IRQ_RSRC ;
 int CR_LOGICAL_DEV_EN ;
 int LOGICAL_DEV_CIR_WAKE ;
 int NVT_DRIVER_NAME ;
 int nvt_cir_wake_reg_read (struct nvt_dev*,int ) ;
 int nvt_cr_read (struct nvt_dev*,int ) ;
 int nvt_efm_disable (struct nvt_dev*) ;
 int nvt_efm_enable (struct nvt_dev*) ;
 int nvt_select_logical_dev (struct nvt_dev*,int ) ;
 int pr_cont (char*,...) ;
 int pr_info (char*,...) ;

__attribute__((used)) static void cir_wake_dump_regs(struct nvt_dev *nvt)
{
 u8 i, fifo_len;

 nvt_efm_enable(nvt);
 nvt_select_logical_dev(nvt, LOGICAL_DEV_CIR_WAKE);

 pr_info("%s: Dump CIR WAKE logical device registers:\n",
  NVT_DRIVER_NAME);
 pr_info(" * CR CIR WAKE ACTIVE :   0x%x\n",
  nvt_cr_read(nvt, CR_LOGICAL_DEV_EN));
 pr_info(" * CR CIR WAKE BASE ADDR: 0x%x\n",
  (nvt_cr_read(nvt, CR_CIR_BASE_ADDR_HI) << 8) |
  nvt_cr_read(nvt, CR_CIR_BASE_ADDR_LO));
 pr_info(" * CR CIR WAKE IRQ NUM:   0x%x\n",
  nvt_cr_read(nvt, CR_CIR_IRQ_RSRC));

 nvt_efm_disable(nvt);

 pr_info("%s: Dump CIR WAKE registers\n", NVT_DRIVER_NAME);
 pr_info(" * IRCON:          0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_IRCON));
 pr_info(" * IRSTS:          0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_IRSTS));
 pr_info(" * IREN:           0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_IREN));
 pr_info(" * FIFO CMP DEEP:  0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_FIFO_CMP_DEEP));
 pr_info(" * FIFO CMP TOL:   0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_FIFO_CMP_TOL));
 pr_info(" * FIFO COUNT:     0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_FIFO_COUNT));
 pr_info(" * SLCH:           0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_SLCH));
 pr_info(" * SLCL:           0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_SLCL));
 pr_info(" * FIFOCON:        0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_FIFOCON));
 pr_info(" * SRXFSTS:        0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_SRXFSTS));
 pr_info(" * SAMPLE RX FIFO: 0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_SAMPLE_RX_FIFO));
 pr_info(" * WR FIFO DATA:   0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_WR_FIFO_DATA));
 pr_info(" * RD FIFO ONLY:   0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_RD_FIFO_ONLY));
 pr_info(" * RD FIFO ONLY IDX: 0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_RD_FIFO_ONLY_IDX));
 pr_info(" * FIFO IGNORE:    0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_FIFO_IGNORE));
 pr_info(" * IRFSM:          0x%x\n",
  nvt_cir_wake_reg_read(nvt, CIR_WAKE_IRFSM));

 fifo_len = nvt_cir_wake_reg_read(nvt, CIR_WAKE_FIFO_COUNT);
 pr_info("%s: Dump CIR WAKE FIFO (len %d)\n", NVT_DRIVER_NAME, fifo_len);
 pr_info("* Contents =");
 for (i = 0; i < fifo_len; i++)
  pr_cont(" %02x",
   nvt_cir_wake_reg_read(nvt, CIR_WAKE_RD_FIFO_ONLY));
 pr_cont("\n");
}
