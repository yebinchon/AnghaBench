
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fintek_dev {int cir_addr; int cir_irq; int cir_port_len; int logical_dev_cir; } ;


 int CIR_CR_BASE_ADDR_HI ;
 int CIR_CR_BASE_ADDR_LO ;
 int CIR_CR_DEV_EN ;
 int CIR_CR_IRQ_SEL ;
 int LOGICAL_DEV_ENABLE ;
 int fintek_cr_write (struct fintek_dev*,int,int ) ;
 int fintek_select_logical_dev (struct fintek_dev*,int ) ;
 int fit_dbg (char*,int,int,int ) ;

__attribute__((used)) static void fintek_cir_ldev_init(struct fintek_dev *fintek)
{

 fintek_select_logical_dev(fintek, fintek->logical_dev_cir);
 fintek_cr_write(fintek, LOGICAL_DEV_ENABLE, CIR_CR_DEV_EN);


 fintek_cr_write(fintek, fintek->cir_addr >> 8, CIR_CR_BASE_ADDR_HI);
 fintek_cr_write(fintek, fintek->cir_addr & 0xff, CIR_CR_BASE_ADDR_LO);

 fintek_cr_write(fintek, fintek->cir_irq, CIR_CR_IRQ_SEL);

 fit_dbg("CIR initialized, base io address: 0x%lx, irq: %d (len: %d)",
  fintek->cir_addr, fintek->cir_irq, fintek->cir_port_len);
}
