
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fintek_dev {int logical_dev_cir; } ;


 int CIR_CONTROL ;
 int CIR_CR_BASE_ADDR_HI ;
 int CIR_CR_BASE_ADDR_LO ;
 int CIR_CR_IRQ_SEL ;
 int CIR_RX_DATA ;
 int CIR_STATUS ;
 int CIR_TX_CONTROL ;
 int CIR_TX_DATA ;
 int FINTEK_DRIVER_NAME ;
 int fintek_cir_reg_read (struct fintek_dev*,int ) ;
 int fintek_config_mode_disable (struct fintek_dev*) ;
 int fintek_config_mode_enable (struct fintek_dev*) ;
 int fintek_cr_read (struct fintek_dev*,int ) ;
 int fintek_select_logical_dev (struct fintek_dev*,int ) ;
 int pr_info (char*,int) ;

__attribute__((used)) static void cir_dump_regs(struct fintek_dev *fintek)
{
 fintek_config_mode_enable(fintek);
 fintek_select_logical_dev(fintek, fintek->logical_dev_cir);

 pr_info("%s: Dump CIR logical device registers:\n", FINTEK_DRIVER_NAME);
 pr_info(" * CR CIR BASE ADDR: 0x%x\n",
  (fintek_cr_read(fintek, CIR_CR_BASE_ADDR_HI) << 8) |
  fintek_cr_read(fintek, CIR_CR_BASE_ADDR_LO));
 pr_info(" * CR CIR IRQ NUM:   0x%x\n",
  fintek_cr_read(fintek, CIR_CR_IRQ_SEL));

 fintek_config_mode_disable(fintek);

 pr_info("%s: Dump CIR registers:\n", FINTEK_DRIVER_NAME);
 pr_info(" * STATUS:     0x%x\n",
  fintek_cir_reg_read(fintek, CIR_STATUS));
 pr_info(" * CONTROL:    0x%x\n",
  fintek_cir_reg_read(fintek, CIR_CONTROL));
 pr_info(" * RX_DATA:    0x%x\n",
  fintek_cir_reg_read(fintek, CIR_RX_DATA));
 pr_info(" * TX_CONTROL: 0x%x\n",
  fintek_cir_reg_read(fintek, CIR_TX_CONTROL));
 pr_info(" * TX_DATA:    0x%x\n",
  fintek_cir_reg_read(fintek, CIR_TX_DATA));
}
